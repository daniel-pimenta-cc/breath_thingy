import 'package:flutter/material.dart';

import '../../domain/models/breathing_phase.dart';
import 'animation_phase_controller.dart';

abstract class BreathingAnimationPainter extends CustomPainter {
  BreathingAnimationPainter(this.controller)
      : super(repaint: controller);

  final AnimationPhaseController controller;

  BreathingPhase get phase => controller.currentPhase;
  double get progress => controller.currentValue;

  @override
  bool shouldRepaint(covariant BreathingAnimationPainter oldDelegate) => true;
}
