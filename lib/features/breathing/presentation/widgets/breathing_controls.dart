import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../domain/models/breathing_session.dart';

class BreathingControls extends StatelessWidget {
  const BreathingControls({
    super.key,
    required this.sessionState,
    required this.onStart,
    required this.onPause,
    required this.onResume,
    required this.onStop,
    required this.onReset,
  });

  final BreathingSessionState sessionState;
  final VoidCallback onStart;
  final VoidCallback onPause;
  final VoidCallback onResume;
  final VoidCallback onStop;
  final VoidCallback onReset;

  @override
  Widget build(BuildContext context) {
    return switch (sessionState) {
      BreathingSessionIdle() => _buildStartButton(),
      BreathingSessionRunning() => _buildRunningControls(),
      BreathingSessionPaused() => _buildPausedControls(),
      BreathingSessionCompleted() => _buildCompletedControls(),
    };
  }

  Widget _buildStartButton() {
    return _ControlButton(
      icon: Icons.play_arrow_rounded,
      size: 72,
      onTap: onStart,
      color: AppColors.softTeal,
    );
  }

  Widget _buildRunningControls() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _ControlButton(
          icon: Icons.stop_rounded,
          size: 52,
          onTap: onStop,
          color: AppColors.exhaleCoralSoft,
        ),
        const SizedBox(width: 32),
        _ControlButton(
          icon: Icons.pause_rounded,
          size: 72,
          onTap: onPause,
          color: AppColors.holdAmber,
        ),
      ],
    );
  }

  Widget _buildPausedControls() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _ControlButton(
          icon: Icons.stop_rounded,
          size: 52,
          onTap: onStop,
          color: AppColors.exhaleCoralSoft,
        ),
        const SizedBox(width: 32),
        _ControlButton(
          icon: Icons.play_arrow_rounded,
          size: 72,
          onTap: onResume,
          color: AppColors.softTeal,
        ),
      ],
    );
  }

  Widget _buildCompletedControls() {
    return _ControlButton(
      icon: Icons.replay_rounded,
      size: 72,
      onTap: onReset,
      color: AppColors.softTeal,
    );
  }
}

class _ControlButton extends StatelessWidget {
  const _ControlButton({
    required this.icon,
    required this.size,
    required this.onTap,
    required this.color,
  });

  final IconData icon;
  final double size;
  final VoidCallback onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color.withValues(alpha: 0.15),
          border: Border.all(color: color.withValues(alpha: 0.4), width: 2),
        ),
        child: Icon(icon, size: size * 0.5, color: color),
      ),
    );
  }
}
