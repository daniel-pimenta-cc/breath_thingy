import '../../../../l10n/app_localizations.dart';

enum BreathingAnimStyle { polygonMorph, particleGather, rippleRings }

extension BreathingAnimStyleL10n on BreathingAnimStyle {
  String label(AppLocalizations l10n) => switch (this) {
    BreathingAnimStyle.polygonMorph => l10n.animPolygonMorph,
    BreathingAnimStyle.particleGather => l10n.animParticleGather,
    BreathingAnimStyle.rippleRings => l10n.animRippleRings,
  };
}
