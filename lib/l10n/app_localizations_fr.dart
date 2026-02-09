// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Breath Thingy';

  @override
  String get animationSection => 'Animation';

  @override
  String get timesSection => 'Durées';

  @override
  String cycleDuration(int totalCycle) {
    return 'Cycle ${totalCycle}s';
  }

  @override
  String get inhaleLabel => 'Inspirer';

  @override
  String get holdLabel => 'Retenir';

  @override
  String get exhaleLabel => 'Expirer';

  @override
  String get startExercise => 'Démarrer l\'exercice';

  @override
  String get configLoadError => 'Erreur de chargement de la configuration';

  @override
  String get phaseInhale => 'Inspirez';

  @override
  String get phaseHold => 'Retenez';

  @override
  String get phaseExhale => 'Expirez';

  @override
  String get phaseIdle => 'Prêt';

  @override
  String cycleCount(int cycle) {
    return 'Cycle $cycle';
  }

  @override
  String completedCycles(int cycles) {
    return 'Terminé ! $cycles cycles';
  }

  @override
  String get readyToStart => 'Prêt à commencer';

  @override
  String cycleProgress(int current, int total) {
    return 'Cycle $current/$total';
  }

  @override
  String get animPolygonMorph => 'Polygones';

  @override
  String get animParticleGather => 'Particules';

  @override
  String get animRippleRings => 'Ondes';
}
