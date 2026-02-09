import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/models/breathing_config.dart';
import '../../domain/models/breathing_phase.dart';
import '../../domain/models/breathing_session.dart';
import 'breathing_config_provider.dart';

part 'breathing_session_provider.g.dart';

@riverpod
class BreathingSessionNotifier extends _$BreathingSessionNotifier {
  Timer? _timer;
  static const _tickInterval = Duration(milliseconds: 50);

  @override
  BreathingSessionState build() {
    ref.onDispose(() => _timer?.cancel());
    return const BreathingSessionState.idle();
  }

  BreathingConfig get _config {
    final configAsync = ref.read(breathingConfigNotifierProvider);
    return configAsync.valueOrNull ?? const BreathingConfig();
  }

  double _durationForPhase(BreathingPhase phase) {
    return switch (phase) {
      BreathingPhase.inhale => _config.inhaleDuration.toDouble(),
      BreathingPhase.hold => _config.holdDuration.toDouble(),
      BreathingPhase.exhale => _config.exhaleDuration.toDouble(),
      BreathingPhase.idle => 0,
    };
  }

  void start() {
    const firstPhase = BreathingPhase.inhale;
    state = BreathingSessionState.running(
      phase: firstPhase,
      cycle: 1,
      elapsed: 0,
      phaseDuration: _durationForPhase(firstPhase),
    );
    _startTimer();
  }

  void pause() {
    final current = state;
    if (current is BreathingSessionRunning) {
      _timer?.cancel();
      state = BreathingSessionState.paused(
        phase: current.phase,
        cycle: current.cycle,
        elapsed: current.elapsed,
        phaseDuration: current.phaseDuration,
      );
    }
  }

  void resume() {
    final current = state;
    if (current is BreathingSessionPaused) {
      state = BreathingSessionState.running(
        phase: current.phase,
        cycle: current.cycle,
        elapsed: current.elapsed,
        phaseDuration: current.phaseDuration,
      );
      _startTimer();
    }
  }

  void stop() {
    _timer?.cancel();
    final cycle = switch (state) {
      BreathingSessionRunning(cycle: final c) => c,
      BreathingSessionPaused(cycle: final c) => c,
      _ => 0,
    };
    state = BreathingSessionState.completed(totalCycles: cycle);
  }

  void reset() {
    _timer?.cancel();
    state = const BreathingSessionState.idle();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(_tickInterval, (_) => _tick());
  }

  void _tick() {
    final current = state;
    if (current is! BreathingSessionRunning) return;

    final newElapsed = current.elapsed + _tickInterval.inMilliseconds / 1000.0;

    if (newElapsed >= current.phaseDuration) {
      _advancePhase(current);
    } else {
      state = BreathingSessionState.running(
        phase: current.phase,
        cycle: current.cycle,
        elapsed: newElapsed,
        phaseDuration: current.phaseDuration,
      );
    }
  }

  void _advancePhase(BreathingSessionRunning current) {
    final (nextPhase, nextCycle) = switch (current.phase) {
      BreathingPhase.inhale => (BreathingPhase.hold, current.cycle),
      BreathingPhase.hold => (BreathingPhase.exhale, current.cycle),
      BreathingPhase.exhale => (BreathingPhase.inhale, current.cycle + 1),
      BreathingPhase.idle => (BreathingPhase.inhale, current.cycle),
    };

    state = BreathingSessionState.running(
      phase: nextPhase,
      cycle: nextCycle,
      elapsed: 0,
      phaseDuration: _durationForPhase(nextPhase),
    );
  }
}
