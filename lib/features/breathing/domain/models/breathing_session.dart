import 'package:freezed_annotation/freezed_annotation.dart';

import 'breathing_phase.dart';

part 'breathing_session.freezed.dart';

@freezed
sealed class BreathingSessionState with _$BreathingSessionState {
  const factory BreathingSessionState.idle() = BreathingSessionIdle;

  const factory BreathingSessionState.running({
    required BreathingPhase phase,
    required int cycle,
    required double elapsed,
    required double phaseDuration,
  }) = BreathingSessionRunning;

  const factory BreathingSessionState.paused({
    required BreathingPhase phase,
    required int cycle,
    required double elapsed,
    required double phaseDuration,
  }) = BreathingSessionPaused;

  const factory BreathingSessionState.completed({required int totalCycles}) =
      BreathingSessionCompleted;
}
