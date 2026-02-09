import 'dart:math';

import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../domain/models/breathing_phase.dart';
import '../base/breathing_animation_painter.dart';

class _Particle {
  final Offset randomPos;
  final double size;
  final double speed;
  final double orbitOffset;

  _Particle({
    required this.randomPos,
    required this.size,
    required this.speed,
    required this.orbitOffset,
  });
}

class ParticleGatherPainter extends BreathingAnimationPainter {
  ParticleGatherPainter(super.controller);

  static final List<_Particle> _particles = _generateParticles();

  static List<_Particle> _generateParticles() {
    final rng = Random(123);
    return List.generate(80, (i) {
      return _Particle(
        randomPos: Offset(rng.nextDouble() * 2 - 1, rng.nextDouble() * 2 - 1),
        size: 2.0 + rng.nextDouble() * 4.0,
        speed: 0.5 + rng.nextDouble() * 0.5,
        orbitOffset: rng.nextDouble() * 2 * pi,
      );
    });
  }

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final halfSize = min(size.width, size.height) / 2;
    final circleRadius = halfSize * 0.25;

    for (int i = 0; i < _particles.length; i++) {
      final p = _particles[i];
      final randomWorld = Offset(
        center.dx + p.randomPos.dx * halfSize * 0.85,
        center.dy + p.randomPos.dy * halfSize * 0.85,
      );

      final angle = (2 * pi * i / _particles.length) + p.orbitOffset;
      final circleWorld = Offset(
        center.dx + cos(angle) * circleRadius,
        center.dy + sin(angle) * circleRadius,
      );

      late Offset pos;
      late double opacity;
      late Color color;

      switch (phase) {
        case BreathingPhase.inhale:
          final t = Curves.easeOutCubic.transform(progress);
          pos = Offset.lerp(randomWorld, circleWorld, t)!;
          opacity = 0.3 + 0.7 * t;
          color = Color.lerp(
            AppColors.inhaleBlue.withValues(alpha: opacity),
            Colors.white.withValues(alpha: opacity),
            t * 0.3,
          )!;

        case BreathingPhase.hold:
          final t = progress;
          final orbitAngle = angle + t * pi * 2 * p.speed;
          final pulseFactor = 1.0 + sin(t * pi * 6) * 0.1;
          pos = Offset(
            center.dx + cos(orbitAngle) * circleRadius * pulseFactor,
            center.dy + sin(orbitAngle) * circleRadius * pulseFactor,
          );
          opacity = 1.0;
          color = Color.lerp(
            AppColors.inhaleBlue,
            AppColors.gold,
            0.5 + sin(t * pi * 2) * 0.5,
          )!;

        case BreathingPhase.exhale:
          final t = Curves.easeInBack.transform(progress.clamp(0.0, 1.0));
          pos = Offset.lerp(circleWorld, randomWorld, t)!;
          opacity = 1.0 - 0.7 * t;
          color = AppColors.inhaleBlue.withValues(alpha: opacity);

        case BreathingPhase.idle:
          pos = randomWorld;
          opacity = 0.3;
          color = AppColors.inhaleBlue.withValues(alpha: opacity);
      }

      // Draw particle
      final paint = Paint()
        ..color = color
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 2);
      canvas.drawCircle(pos, p.size * (opacity * 0.5 + 0.5), paint);
    }

    // Connection lines during hold
    if (phase == BreathingPhase.hold) {
      _drawConnections(canvas, center, circleRadius, halfSize);
    }
  }

  void _drawConnections(
    Canvas canvas,
    Offset center,
    double circleRadius,
    double halfSize,
  ) {
    final t = progress;
    final connectionPaint = Paint()
      ..color = AppColors.gold.withValues(alpha: 0.15)
      ..strokeWidth = 0.5;

    for (int i = 0; i < _particles.length; i++) {
      final pi2 = _particles[i];
      final angle1 =
          (2 * pi * i / _particles.length) +
          pi2.orbitOffset +
          t * pi * 2 * pi2.speed;
      final pos1 = Offset(
        center.dx + cos(angle1) * circleRadius,
        center.dy + sin(angle1) * circleRadius,
      );

      for (int j = i + 1; j < min(i + 5, _particles.length); j++) {
        final pj = _particles[j];
        final angle2 =
            (2 * pi * j / _particles.length) +
            pj.orbitOffset +
            t * pi * 2 * pj.speed;
        final pos2 = Offset(
          center.dx + cos(angle2) * circleRadius,
          center.dy + sin(angle2) * circleRadius,
        );

        final dist = (pos1 - pos2).distance;
        if (dist < 60) {
          connectionPaint.color = AppColors.gold.withValues(
            alpha: 0.15 * (1 - dist / 60),
          );
          canvas.drawLine(pos1, pos2, connectionPaint);
        }
      }
    }
  }
}
