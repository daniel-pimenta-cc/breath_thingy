import 'dart:math';

import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../domain/models/breathing_phase.dart';
import '../base/breathing_animation_painter.dart';

class PolygonMorphPainter extends BreathingAnimationPainter {
  PolygonMorphPainter(super.controller);

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final maxRadius = min(size.width, size.height) * 0.4;

    switch (phase) {
      case BreathingPhase.inhale:
        _paintInhale(canvas, center, maxRadius);
      case BreathingPhase.hold:
        _paintHold(canvas, center, maxRadius);
      case BreathingPhase.exhale:
        _paintExhale(canvas, center, maxRadius);
      case BreathingPhase.idle:
        _paintIdle(canvas, center, maxRadius);
    }
  }

  void _paintInhale(Canvas canvas, Offset center, double maxRadius) {
    final t = Curves.easeInOutCubic.transform(progress);
    final radius = maxRadius * (0.1 + 0.9 * t);
    final sides = (3 + (9 * t)).round().clamp(3, 12);
    final rotation = t * pi * 0.5;

    final color = Color.lerp(AppColors.indigo, AppColors.teal, t)!;

    _drawPolygon(canvas, center, radius, sides, rotation, color, t);
  }

  void _paintHold(Canvas canvas, Offset center, double maxRadius) {
    final t = progress;
    final oscillation = sin(t * pi * 4) * 0.03;
    final radius = maxRadius * (1.0 + oscillation);
    const sides = 12;
    final rotation = t * pi * 0.2;

    final colorT = (sin(t * pi * 2) + 1) / 2;
    final color = Color.lerp(AppColors.teal, AppColors.cyan, colorT)!;

    // Ghost shape
    final ghostPaint = Paint()
      ..color = color.withValues(alpha: 0.15)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 8);
    _drawPolygonPath(canvas, center, radius * 1.1, sides, rotation, ghostPaint);

    _drawPolygon(canvas, center, radius, sides, rotation, color, 1.0);
  }

  void _paintExhale(Canvas canvas, Offset center, double maxRadius) {
    final t = Curves.easeInOutCubic.transform(progress);
    final radius = maxRadius * (1.0 - 0.9 * t);
    final sides = (12 - (9 * t)).round().clamp(3, 12);
    final rotation = (1 - t) * pi * 0.5;

    final color = Color.lerp(AppColors.teal, AppColors.indigo, t)!;

    _drawPolygon(canvas, center, radius, sides, rotation, color, 1.0 - t);

    // Burst particles at end
    if (t > 0.85) {
      final particleT = (t - 0.85) / 0.15;
      _drawBurstParticles(canvas, center, maxRadius, particleT, color);
    }
  }

  void _paintIdle(Canvas canvas, Offset center, double maxRadius) {
    final radius = maxRadius * 0.1;
    final paint = Paint()
      ..color = AppColors.indigo.withValues(alpha: 0.5)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 4);
    canvas.drawCircle(center, radius, paint);
  }

  void _drawPolygon(
    Canvas canvas,
    Offset center,
    double radius,
    int sides,
    double rotation,
    Color color,
    double glowIntensity,
  ) {
    // Glow
    if (glowIntensity > 0) {
      final glowPaint = Paint()
        ..color = color.withValues(alpha: 0.3 * glowIntensity)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 12);
      _drawPolygonPath(
        canvas,
        center,
        radius * 1.05,
        sides,
        rotation,
        glowPaint,
      );
    }

    // Fill
    final fillPaint = Paint()
      ..color = color.withValues(alpha: 0.2)
      ..style = PaintingStyle.fill;
    _drawPolygonPath(canvas, center, radius, sides, rotation, fillPaint);

    // Stroke
    final strokePaint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.5
      ..strokeJoin = StrokeJoin.round
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 2);
    _drawPolygonPath(canvas, center, radius, sides, rotation, strokePaint);
  }

  void _drawPolygonPath(
    Canvas canvas,
    Offset center,
    double radius,
    int sides,
    double rotation,
    Paint paint,
  ) {
    final path = Path();
    for (int i = 0; i <= sides; i++) {
      final angle = (2 * pi * i / sides) - pi / 2 + rotation;
      final point = Offset(
        center.dx + radius * cos(angle),
        center.dy + radius * sin(angle),
      );
      if (i == 0) {
        path.moveTo(point.dx, point.dy);
      } else {
        path.lineTo(point.dx, point.dy);
      }
    }
    path.close();
    canvas.drawPath(path, paint);
  }

  void _drawBurstParticles(
    Canvas canvas,
    Offset center,
    double maxRadius,
    double t,
    Color color,
  ) {
    final rng = Random(42);
    for (int i = 0; i < 5; i++) {
      final angle = rng.nextDouble() * 2 * pi;
      final dist = maxRadius * 0.3 * t + rng.nextDouble() * 20;
      final pos = Offset(
        center.dx + cos(angle) * dist,
        center.dy + sin(angle) * dist,
      );
      final size = 3.0 * (1 - t);
      final paint = Paint()
        ..color = color.withValues(alpha: (1 - t) * 0.8)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 3);
      canvas.drawCircle(pos, size, paint);
    }
  }
}
