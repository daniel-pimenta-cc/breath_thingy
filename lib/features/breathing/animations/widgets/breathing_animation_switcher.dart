import 'package:flutter/material.dart';

import '../../domain/models/animation_style.dart';
import '../base/animation_phase_controller.dart';
import '../base/breathing_animation.dart';
import 'particle_gather_animation.dart';
import 'polygon_morph_animation.dart';
import 'ripple_rings_animation.dart';

class BreathingAnimationSwitcher extends StatelessWidget {
  const BreathingAnimationSwitcher({
    super.key,
    required this.style,
    required this.controller,
    this.isPreview = false,
  });

  final BreathingAnimStyle style;
  final AnimationPhaseController controller;
  final bool isPreview;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 600),
      child: _buildAnimation(),
    );
  }

  BreathingAnimation _buildAnimation() {
    return switch (style) {
      BreathingAnimStyle.polygonMorph => PolygonMorphAnimation(
        key: const ValueKey('polygon'),
        controller: controller,
        isPreview: isPreview,
      ),
      BreathingAnimStyle.particleGather => ParticleGatherAnimation(
        key: const ValueKey('particle'),
        controller: controller,
        isPreview: isPreview,
      ),
      BreathingAnimStyle.rippleRings => RippleRingsAnimation(
        key: const ValueKey('ripple'),
        controller: controller,
        isPreview: isPreview,
      ),
    };
  }
}
