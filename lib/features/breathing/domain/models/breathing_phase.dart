import '../../../../l10n/app_localizations.dart';

enum BreathingPhase { inhale, hold, exhale, idle }

extension BreathingPhaseL10n on BreathingPhase {
  String label(AppLocalizations l10n) => switch (this) {
    BreathingPhase.inhale => l10n.phaseInhale,
    BreathingPhase.hold => l10n.phaseHold,
    BreathingPhase.exhale => l10n.phaseExhale,
    BreathingPhase.idle => l10n.phaseIdle,
  };
}
