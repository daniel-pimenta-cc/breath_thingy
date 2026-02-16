import 'package:flutter/services.dart';

import '../domain/models/breathing_phase.dart';

class HapticFeedbackService {
  bool _enabled = true;

  set enabled(bool value) => _enabled = value;

  void onPhaseChange(BreathingPhase phase) {
    if (!_enabled) return;

    switch (phase) {
      case BreathingPhase.inhale:
        HapticFeedback.lightImpact();
      case BreathingPhase.exhale:
        HapticFeedback.mediumImpact();
      case BreathingPhase.hold:
        HapticFeedback.heavyImpact();
      case BreathingPhase.idle:
        break;
    }
  }
}
