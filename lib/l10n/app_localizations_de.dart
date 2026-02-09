// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'Breath Thingy';

  @override
  String get animationSection => 'Animation';

  @override
  String get timesSection => 'Zeiten';

  @override
  String cycleDuration(int totalCycle) {
    return 'Zyklus ${totalCycle}s';
  }

  @override
  String get inhaleLabel => 'Einatmen';

  @override
  String get holdLabel => 'Halten';

  @override
  String get exhaleLabel => 'Ausatmen';

  @override
  String get startExercise => 'Übung starten';

  @override
  String get configLoadError => 'Fehler beim Laden der Konfiguration';

  @override
  String get phaseInhale => 'Einatmen';

  @override
  String get phaseHold => 'Halten';

  @override
  String get phaseExhale => 'Ausatmen';

  @override
  String get phaseIdle => 'Bereit';

  @override
  String cycleCount(int cycle) {
    return 'Zyklus $cycle';
  }

  @override
  String completedCycles(int cycles) {
    return 'Fertig! $cycles Zyklen';
  }

  @override
  String get readyToStart => 'Bereit zum Starten';

  @override
  String cycleProgress(int current, int total) {
    return 'Zyklus $current/$total';
  }

  @override
  String get animPolygonMorph => 'Polygone';

  @override
  String get animParticleGather => 'Partikel';

  @override
  String get animRippleRings => 'Wellen';
}
