import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../l10n/app_localizations.dart';
import '../../domain/models/breathing_phase.dart';

class PhaseIndicator extends StatelessWidget {
  const PhaseIndicator({super.key, required this.phase});

  final BreathingPhase phase;

  Color get _color => switch (phase) {
    BreathingPhase.inhale => AppColors.inhaleBlue,
    BreathingPhase.hold => AppColors.holdAmber,
    BreathingPhase.exhale => AppColors.exhaleCoralSoft,
    BreathingPhase.idle => AppColors.textSecondary,
  };

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 400),
      transitionBuilder: (child, animation) {
        return FadeTransition(
          opacity: animation,
          child: SlideTransition(
            position:
                Tween<Offset>(
                  begin: const Offset(0, 0.3),
                  end: Offset.zero,
                ).animate(
                  CurvedAnimation(
                    parent: animation,
                    curve: Curves.easeOutCubic,
                  ),
                ),
            child: child,
          ),
        );
      },
      child: Text(
        phase.label(l10n),
        key: ValueKey(phase),
        style: GoogleFonts.poppins(
          fontSize: 28,
          fontWeight: FontWeight.w600,
          color: _color,
          letterSpacing: 2,
        ),
      ),
    );
  }
}
