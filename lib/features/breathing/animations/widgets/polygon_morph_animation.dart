import 'package:flutter/material.dart';

import '../base/breathing_animation.dart';
import '../painters/polygon_morph_painter.dart';

class PolygonMorphAnimation extends BreathingAnimation {
  const PolygonMorphAnimation({
    super.key,
    required super.controller,
    super.isPreview = false,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: PolygonMorphPainter(controller),
      size: Size.infinite,
    );
  }
}
