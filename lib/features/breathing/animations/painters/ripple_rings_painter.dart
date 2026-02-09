import 'dart:math';

import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../domain/models/breathing_phase.dart';
import '../base/breathing_animation_painter.dart';

class RippleRingsPainter extends BreathingAnimationPainter {
  RippleRingsPainter(super.controller);

  static const _ringCount = 6;

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final maxRadius = min(size.width, size.height) * 0.45;

    for (int i = 0; i < _ringCount; i++) {
      final ringT = i / (_ringCount - 1); // 0..1 from inner to outer

      switch (phase) {
        case BreathingPhase.inhale:
          _paintInhaleRing(canvas, center, maxRadius, i, ringT);
        case BreathingPhase.hold:
          _paintHoldRing(canvas, center, maxRadius, i, ringT);
        case BreathingPhase.exhale:
          _paintExhaleRing(canvas, center, maxRadius, i, ringT);
        case BreathingPhase.idle:
          _paintIdleRing(canvas, center, maxRadius, i, ringT);
      }
    }
  }

  void _paintInhaleRing(
    Canvas canvas,
    Offset center,
    double maxRadius,
    int index,
    double ringT,
  ) {
    final t = progress;
    // Inner rings contract first (cascade)
    final delay = ringT * 0.3;
    final ringProgress = ((t - delay) / (1.0 - delay)).clamp(0.0, 1.0);
    final eased = Curves.easeInOutCubic.transform(ringProgress);

    final spreadRadius = maxRadius * (0.2 + ringT * 0.8);
    final targetRadius = maxRadius * (0.15 + ringT * 0.25);
    final radius = spreadRadius + (targetRadius - spreadRadius) * eased;

    final thickness = 1.5 + eased * 2.5;
    final opacity = 0.3 + eased * 0.7;

    final color = AppColors.inhaleBlue.withValues(alpha: opacity);
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = thickness
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, 2 + eased * 2);

    canvas.drawCircle(center, radius, paint);
  }

  void _paintHoldRing(
    Canvas canvas,
    Offset center,
    double maxRadius,
    int index,
    double ringT,
  ) {
    final t = progress;
    final baseRadius = maxRadius * (0.15 + ringT * 0.25);
    final pulse = sin(t * pi * 4 + index * 0.8) * maxRadius * 0.02;
    final radius = baseRadius + pulse;

    // Color rotation: blue → lavender → rose → lavender
    final colorT = (sin(t * pi * 2 + index * 0.5) + 1) / 2;
    final color = Color.lerp(AppColors.inhaleBlue, AppColors.lavender, colorT)!;

    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0 + sin(t * pi * 3 + index) * 0.5
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 3);

    canvas.drawCircle(center, radius, paint);
  }

  void _paintExhaleRing(
    Canvas canvas,
    Offset center,
    double maxRadius,
    int index,
    double ringT,
  ) {
    final t = progress;
    // Outer rings expand first
    final delay = (1 - ringT) * 0.3;
    final ringProgress = ((t - delay) / (1.0 - delay)).clamp(0.0, 1.0);
    final eased = Curves.easeInOutCubic.transform(ringProgress);

    final startRadius = maxRadius * (0.15 + ringT * 0.25);
    final endRadius = maxRadius * (0.2 + ringT * 0.8);
    final radius = startRadius + (endRadius - startRadius) * eased;

    final thickness = 4.0 - eased * 2.5;
    final opacity = 1.0 - eased * 0.7;

    final color = AppColors.inhaleBlue.withValues(alpha: opacity);
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = thickness.clamp(0.5, 4.0)
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, 2 + eased * 3);

    canvas.drawCircle(center, radius, paint);
  }

  void _paintIdleRing(
    Canvas canvas,
    Offset center,
    double maxRadius,
    int index,
    double ringT,
  ) {
    final radius = maxRadius * (0.2 + ringT * 0.8);
    final paint = Paint()
      ..color = AppColors.inhaleBlue.withValues(alpha: 0.15)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 2);
    canvas.drawCircle(center, radius, paint);
  }
}
