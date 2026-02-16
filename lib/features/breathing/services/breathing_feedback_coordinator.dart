import '../domain/models/breathing_phase.dart';
import '../domain/models/feedback_config.dart';
import 'haptic_feedback_service.dart';

class BreathingFeedbackCoordinator {
  final HapticFeedbackService _haptic = HapticFeedbackService();

  void configure(FeedbackConfig config) {
    _haptic.enabled = config.hapticEnabled;
  }

  void onPhaseChange(BreathingPhase phase) {
    _haptic.onPhaseChange(phase);
  }
}
