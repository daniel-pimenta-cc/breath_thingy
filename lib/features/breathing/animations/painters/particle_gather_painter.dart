import 'dart:math';

import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../domain/models/breathing_phase.dart';
import '../base/breathing_animation_painter.dart';

class _Particle {
  final Offset randomPos;
  final double size;
  final double phaseOffset;
  final double baseOpacity;

  _Particle({
    required this.randomPos,
    required this.size,
    required this.phaseOffset,
    required this.baseOpacity,
  });
}

class ParticleGatherPainter extends BreathingAnimationPainter {
  ParticleGatherPainter(super.controller);

  static final List<_Particle> _particles = _generateParticles();

  static List<_Particle> _generateParticles() {
    final rng = Random(42);
    return List.generate(40, (i) {
      return _Particle(
        randomPos: Offset(
          rng.nextDouble() * 2 - 1,
          rng.nextDouble() * 2 - 1,
        ),
        size: 2.0 + rng.nextDouble() * 3.0,
        phaseOffset: rng.nextDouble() * 2 * pi,
        baseOpacity: 0.6 + rng.nextDouble() * 0.4,
      );
    });
  }

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final halfSize = min(size.width, size.height) / 2;
    final circleRadius = halfSize * 0.3;

    // Subtle guide circle during hold
    if (phase == BreathingPhase.hold) {
      _drawGuideCircle(canvas, center, circleRadius);
    }

    for (int i = 0; i < _particles.length; i++) {
      _paintParticle(canvas, center, halfSize, circleRadius, i);
    }
  }

  void _drawGuideCircle(Canvas canvas, Offset center, double radius) {
    final t = progress;
    final pulse = sin(t * pi * 4) * radius * 0.02;
    // Envelope: fades in and out so it's invisible at phase boundaries
    final envelope = sin(t * pi).clamp(0.0, 1.0);
    final paint = Paint()
      ..color = AppColors.inhaleBlue.withValues(alpha: 0.08 * envelope)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 4);
    canvas.drawCircle(center, radius + pulse, paint);
  }

  void _paintParticle(
    Canvas canvas,
    Offset center,
    double halfSize,
    double circleRadius,
    int i,
  ) {
    final p = _particles[i];

    final randomWorld = Offset(
      center.dx + p.randomPos.dx * halfSize * 0.85,
      center.dy + p.randomPos.dy * halfSize * 0.85,
    );

    final baseAngle = 2 * pi * i / _particles.length;
    final circleWorld = Offset(
      center.dx + cos(baseAngle) * circleRadius,
      center.dy + sin(baseAngle) * circleRadius,
    );

    late Offset pos;
    late double opacity;
    late Color color;
    late double particleSize;

    switch (phase) {
      case BreathingPhase.inhale:
        final eased = Curves.easeInOutCubic.transform(progress);
        pos = Offset.lerp(randomWorld, circleWorld, eased)!;
        opacity = (0.3 + 0.7 * eased) * p.baseOpacity;
        color = AppColors.inhaleBlue.withValues(alpha: opacity);
        particleSize = p.size * (0.5 + 0.5 * eased);

      case BreathingPhase.hold:
        final t = progress;

        // Gentle breathing pulse (zero at t=0 and t=1)
        final pulseFactor = 1.0 + sin(t * pi * 4) * 0.04;

        // Slow oscillating rotation (returns to base at boundaries)
        final rotAngle = baseAngle + sin(t * pi * 2) * pi * 0.08;

        // Individual shimmer with envelope (zero at boundaries)
        final shimmerEnv = sin(t * pi);
        final shimmer =
            sin(t * pi * 6 + p.phaseOffset) * circleRadius * 0.015 *
            shimmerEnv;

        pos = Offset(
          center.dx +
              cos(rotAngle) * circleRadius * pulseFactor +
              cos(p.phaseOffset) * shimmer,
          center.dy +
              sin(rotAngle) * circleRadius * pulseFactor +
              sin(p.phaseOffset) * shimmer,
        );

        opacity = p.baseOpacity;

        // Color wave (starts and ends at inhaleBlue)
        final colorT = (1 - cos(t * pi * 2)) / 2;
        color = Color.lerp(
          AppColors.inhaleBlue.withValues(alpha: opacity),
          AppColors.lavender.withValues(alpha: opacity),
          colorT * 0.3,
        )!;

        particleSize = p.size;

      case BreathingPhase.exhale:
        final eased = Curves.easeInOutCubic.transform(progress);
        pos = Offset.lerp(circleWorld, randomWorld, eased)!;
        opacity = (1.0 - 0.7 * eased) * p.baseOpacity;
        color = AppColors.inhaleBlue.withValues(alpha: opacity);
        particleSize = p.size * (1.0 - 0.5 * eased);

      case BreathingPhase.idle:
        pos = randomWorld;
        opacity = 0.3 * p.baseOpacity;
        color = AppColors.inhaleBlue.withValues(alpha: opacity);
        particleSize = p.size * 0.5;
    }

    final paint = Paint()
      ..color = color
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 2);
    canvas.drawCircle(pos, particleSize, paint);
  }
}
