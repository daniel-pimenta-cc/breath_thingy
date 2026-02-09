import 'package:flutter/material.dart';

import '../base/breathing_animation.dart';
import '../painters/ripple_rings_painter.dart';

class RippleRingsAnimation extends BreathingAnimation {
  const RippleRingsAnimation({
    super.key,
    required super.controller,
    super.isPreview = false,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: RippleRingsPainter(controller),
      size: Size.infinite,
    );
  }
}
