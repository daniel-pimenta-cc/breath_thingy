import 'dart:math';

import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../domain/models/breathing_phase.dart';
import '../base/breathing_animation_painter.dart';

class PolygonMorphPainter extends BreathingAnimationPainter {
  PolygonMorphPainter(super.controller);

  static const _layerCount = 3;

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final maxRadius = min(size.width, size.height) * 0.4;

    for (int i = 0; i < _layerCount; i++) {
      final layerT = i / (_layerCount - 1); // 0..1 inner to outer

      switch (phase) {
        case BreathingPhase.inhale:
          _paintInhaleLayer(canvas, center, maxRadius, i, layerT);
        case BreathingPhase.hold:
          _paintHoldLayer(canvas, center, maxRadius, i, layerT);
        case BreathingPhase.exhale:
          _paintExhaleLayer(canvas, center, maxRadius, i, layerT);
        case BreathingPhase.idle:
          _paintIdleLayer(canvas, center, maxRadius, i, layerT);
      }
    }
  }

  // ── Inhale: layers expand from small triangle to full octagon ──

  void _paintInhaleLayer(
    Canvas canvas,
    Offset center,
    double maxRadius,
    int index,
    double layerT,
  ) {
    final t = progress;
    // Inner layers animate first (cascade)
    final delay = layerT * 0.25;
    final layerProgress = ((t - delay) / (1.0 - delay)).clamp(0.0, 1.0);
    final eased = Curves.easeInOutCubic.transform(layerProgress);

    final idleRadius = maxRadius * 0.08;
    final fullRadius = maxRadius * (0.5 + layerT * 0.35);
    final radius = idleRadius + (fullRadius - idleRadius) * eased;

    final sides = 3.0 + eased * 5.0; // 3 → 8
    final cornerRadius = radius * (0.05 + eased * 0.15);
    final rotation = eased * pi / 6 * (1.0 + layerT * 0.3);

    final opacity = (0.15 + 0.85 * eased) * (1.0 - layerT * 0.15);
    final color = Color.lerp(AppColors.indigo, AppColors.teal, eased)!;
    final strokeWidth = 1.5 + eased * 2.0;

    _drawLayer(
      canvas, center, radius, sides, cornerRadius,
      rotation, color, opacity, strokeWidth,
    );
  }

  // ── Hold: gentle pulse, slow rotation, color cycling ──

  void _paintHoldLayer(
    Canvas canvas,
    Offset center,
    double maxRadius,
    int index,
    double layerT,
  ) {
    final t = progress;

    final baseRadius = maxRadius * (0.5 + layerT * 0.35);
    final pulse = sin(t * pi * 4 + index * 0.8) * maxRadius * 0.015;
    final radius = baseRadius + pulse;

    const sides = 8.0;
    final cornerRadius = radius * 0.2;

    // Sinusoidal rotation that returns to base at t=0 and t=1
    final baseRotation = pi / 6 * (1.0 + layerT * 0.3);
    final rotation =
        baseRotation + sin(t * pi * 2 + index * 0.5) * pi * 0.04;

    final colorT = (sin(t * pi * 2 + index * 0.5) + 1) / 2;
    final color = Color.lerp(AppColors.teal, AppColors.cyan, colorT)!;
    final opacity = 1.0 - layerT * 0.15;
    final strokeWidth = 3.0 + sin(t * pi * 3 + index) * 0.3;

    _drawLayer(
      canvas, center, radius, sides, cornerRadius,
      rotation, color, opacity, strokeWidth,
    );
  }

  // ── Exhale: layers contract back to small triangle ──

  void _paintExhaleLayer(
    Canvas canvas,
    Offset center,
    double maxRadius,
    int index,
    double layerT,
  ) {
    final t = progress;
    // Outer layers animate first
    final delay = (1 - layerT) * 0.25;
    final layerProgress = ((t - delay) / (1.0 - delay)).clamp(0.0, 1.0);
    final eased = Curves.easeInOutCubic.transform(layerProgress);

    final fullRadius = maxRadius * (0.5 + layerT * 0.35);
    final idleRadius = maxRadius * 0.08;
    final radius = fullRadius + (idleRadius - fullRadius) * eased;

    final sides = 8.0 - eased * 5.0; // 8 → 3
    final cornerRadius = radius * (0.2 - eased * 0.15);

    final fullRotation = pi / 6 * (1.0 + layerT * 0.3);
    final rotation = fullRotation * (1.0 - eased);

    final opacity = (1.0 - layerT * 0.15) * (1.0 - eased * 0.85);
    final color = Color.lerp(AppColors.teal, AppColors.indigo, eased)!;
    final strokeWidth = (3.5 - eased * 2.0).clamp(0.5, 4.0);

    _drawLayer(
      canvas, center, radius, sides, cornerRadius,
      rotation, color, opacity, strokeWidth,
    );
  }

  // ── Idle: small, faint triangles ──

  void _paintIdleLayer(
    Canvas canvas,
    Offset center,
    double maxRadius,
    int index,
    double layerT,
  ) {
    final radius = maxRadius * 0.08;
    _drawLayer(
      canvas, center, radius, 3.0, radius * 0.05,
      0.0, AppColors.indigo, 0.15, 1.0,
    );
  }

  // ── Drawing ──

  void _drawLayer(
    Canvas canvas,
    Offset center,
    double radius,
    double sides,
    double cornerRadius,
    double rotation,
    Color color,
    double opacity,
    double strokeWidth,
  ) {
    if (radius < 1 || opacity < 0.01) return;

    final vertices = _computeVertices(center, radius, sides, rotation);
    final path = _roundedPath(vertices, cornerRadius);

    // Glow
    final glowPaint = Paint()
      ..color = color.withValues(alpha: opacity * 0.25)
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth + 6
      ..strokeJoin = StrokeJoin.round
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, 8 + strokeWidth);
    canvas.drawPath(path, glowPaint);

    // Main stroke
    final strokePaint = Paint()
      ..color = color.withValues(alpha: opacity)
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeJoin = StrokeJoin.round
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 1.5);
    canvas.drawPath(path, strokePaint);
  }

  // ── Smooth polygon vertex interpolation ──

  List<Offset> _computeVertices(
    Offset center,
    double radius,
    double sides,
    double rotation,
  ) {
    final n = sides.ceil().clamp(3, 12);
    final nLower = sides.floor().clamp(3, 12);
    final frac = sides - nLower;
    final vertices = <Offset>[];

    for (int i = 0; i < n; i++) {
      if (n == nLower || frac < 0.001) {
        // Exact polygon
        final angle = (2 * pi * i / n) - pi / 2 + rotation;
        vertices.add(Offset(
          center.dx + radius * cos(angle),
          center.dy + radius * sin(angle),
        ));
      } else {
        // Interpolate between nLower-gon and n-gon positions
        final targetAngle = (2 * pi * i / n) - pi / 2 + rotation;
        final tx = center.dx + radius * cos(targetAngle);
        final ty = center.dy + radius * sin(targetAngle);

        // Find corresponding point on lower polygon's perimeter
        final normalizedAngle = (2 * pi * i / n) % (2 * pi);
        final lowerPos = normalizedAngle / (2 * pi) * nLower;
        final seg = lowerPos.floor() % nLower;
        final segFrac = lowerPos - lowerPos.floor();

        final a1 = (2 * pi * seg / nLower) - pi / 2 + rotation;
        final a2 =
            (2 * pi * ((seg + 1) % nLower) / nLower) - pi / 2 + rotation;

        final sx =
            center.dx + radius * (cos(a1) * (1 - segFrac) + cos(a2) * segFrac);
        final sy =
            center.dy + radius * (sin(a1) * (1 - segFrac) + sin(a2) * segFrac);

        vertices.add(Offset(sx + (tx - sx) * frac, sy + (ty - sy) * frac));
      }
    }

    return vertices;
  }

  // ── Rounded corners via quadratic bezier ──

  Path _roundedPath(List<Offset> vertices, double cornerRadius) {
    final n = vertices.length;
    if (n < 3) return Path()..addPolygon(vertices, true);

    final path = Path();

    for (int i = 0; i < n; i++) {
      final prev = vertices[(i - 1 + n) % n];
      final curr = vertices[i];
      final next = vertices[(i + 1) % n];

      final toPrev = prev - curr;
      final toNext = next - curr;
      final prevDist = toPrev.distance;
      final nextDist = toNext.distance;

      if (prevDist < 0.5 || nextDist < 0.5) {
        if (i == 0) {
          path.moveTo(curr.dx, curr.dy);
        } else {
          path.lineTo(curr.dx, curr.dy);
        }
        continue;
      }

      final maxRound = min(cornerRadius, min(prevDist, nextDist) * 0.4);
      final startPt = curr + toPrev / prevDist * maxRound;
      final endPt = curr + toNext / nextDist * maxRound;

      if (i == 0) {
        path.moveTo(startPt.dx, startPt.dy);
      } else {
        path.lineTo(startPt.dx, startPt.dy);
      }
      path.quadraticBezierTo(curr.dx, curr.dy, endPt.dx, endPt.dy);
    }

    path.close();
    return path;
  }
}
