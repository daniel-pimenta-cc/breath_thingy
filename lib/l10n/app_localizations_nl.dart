// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'Breath Thingy';

  @override
  String get animationSection => 'Animatie';

  @override
  String get timesSection => 'Tijden';

  @override
  String cycleDuration(int totalCycle) {
    return 'Cyclus ${totalCycle}s';
  }

  @override
  String get inhaleLabel => 'Inademen';

  @override
  String get holdLabel => 'Vasthouden';

  @override
  String get exhaleLabel => 'Uitademen';

  @override
  String get startExercise => 'Start oefening';

  @override
  String get configLoadError => 'Fout bij laden van configuratie';

  @override
  String get phaseInhale => 'Adem in';

  @override
  String get phaseHold => 'Vasthouden';

  @override
  String get phaseExhale => 'Adem uit';

  @override
  String get phaseIdle => 'Klaar';

  @override
  String cycleCount(int cycle) {
    return 'Cyclus $cycle';
  }

  @override
  String completedCycles(int cycles) {
    return 'Klaar! $cycles cycli';
  }

  @override
  String get readyToStart => 'Klaar om te beginnen';

  @override
  String cycleProgress(int current, int total) {
    return 'Cyclus $current/$total';
  }

  @override
  String get animPolygonMorph => 'Polygonen';

  @override
  String get animParticleGather => 'Deeltjes';

  @override
  String get animRippleRings => 'Golven';
}
