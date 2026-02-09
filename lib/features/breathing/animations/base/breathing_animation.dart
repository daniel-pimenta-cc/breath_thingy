import 'package:flutter/material.dart';

import 'animation_phase_controller.dart';

abstract class BreathingAnimation extends StatelessWidget {
  const BreathingAnimation({
    super.key,
    required this.controller,
    this.isPreview = false,
  });

  final AnimationPhaseController controller;
  final bool isPreview;
}
