import 'package:flutter/material.dart';

import '../base/breathing_animation.dart';
import '../painters/particle_gather_painter.dart';

class ParticleGatherAnimation extends BreathingAnimation {
  const ParticleGatherAnimation({
    super.key,
    required super.controller,
    super.isPreview = false,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: ParticleGatherPainter(controller),
      size: Size.infinite,
    );
  }
}
