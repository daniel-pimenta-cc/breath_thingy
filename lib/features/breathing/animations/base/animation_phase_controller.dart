import 'package:flutter/material.dart';

import '../../domain/models/breathing_config.dart';
import '../../domain/models/breathing_phase.dart';

class AnimationPhaseController extends ChangeNotifier {
  AnimationPhaseController(this._vsync);

  final TickerProvider _vsync;

  late AnimationController _inhaleController;
  late AnimationController _holdController;
  late AnimationController _exhaleController;

  BreathingConfig _config = const BreathingConfig();
  BreathingPhase _currentPhase = BreathingPhase.idle;
  bool _isRunning = false;
  bool _isPaused = false;

  BreathingPhase get currentPhase => _currentPhase;
  bool get isRunning => _isRunning;
  bool get isPaused => _isPaused;

  double get currentValue {
    return switch (_currentPhase) {
      BreathingPhase.inhale => _inhaleController.value,
      BreathingPhase.hold => _holdController.value,
      BreathingPhase.exhale => _exhaleController.value,
      BreathingPhase.idle => 0.0,
    };
  }

  AnimationController get activeController {
    return switch (_currentPhase) {
      BreathingPhase.inhale => _inhaleController,
      BreathingPhase.hold => _holdController,
      BreathingPhase.exhale => _exhaleController,
      BreathingPhase.idle => _inhaleController,
    };
  }

  void configure(BreathingConfig config) {
    _config = config;
    _initControllers();
  }

  void _initControllers() {
    _inhaleController = AnimationController(
      vsync: _vsync,
      duration: Duration(seconds: _config.inhaleDuration),
    )..addListener(notifyListeners);

    _holdController = AnimationController(
      vsync: _vsync,
      duration: Duration(seconds: _config.holdDuration),
    )..addListener(notifyListeners);

    _exhaleController = AnimationController(
      vsync: _vsync,
      duration: Duration(seconds: _config.exhaleDuration),
    )..addListener(notifyListeners);
  }

  Future<void> startCycle() async {
    _isRunning = true;
    _isPaused = false;

    while (_isRunning) {
      // Inhale
      _currentPhase = BreathingPhase.inhale;
      notifyListeners();
      _inhaleController.reset();
      try {
        await _inhaleController.forward().orCancel;
      } on TickerCanceled {
        return;
      }
      if (!_isRunning) return;

      // Hold
      _currentPhase = BreathingPhase.hold;
      notifyListeners();
      _holdController.reset();
      try {
        await _holdController.forward().orCancel;
      } on TickerCanceled {
        return;
      }
      if (!_isRunning) return;

      // Exhale
      _currentPhase = BreathingPhase.exhale;
      notifyListeners();
      _exhaleController.reset();
      try {
        await _exhaleController.forward().orCancel;
      } on TickerCanceled {
        return;
      }
      if (!_isRunning) return;
    }
  }

  void pause() {
    _isPaused = true;
    activeController.stop();
    notifyListeners();
  }

  void resume() {
    _isPaused = false;
    activeController.forward();
    notifyListeners();
  }

  void stop() {
    _isRunning = false;
    _isPaused = false;
    _currentPhase = BreathingPhase.idle;
    _inhaleController.reset();
    _holdController.reset();
    _exhaleController.reset();
    notifyListeners();
  }

  @override
  void dispose() {
    _inhaleController.dispose();
    _holdController.dispose();
    _exhaleController.dispose();
    super.dispose();
  }
}
