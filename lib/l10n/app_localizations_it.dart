// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'Breath Thingy';

  @override
  String get animationSection => 'Animazione';

  @override
  String get timesSection => 'Tempi';

  @override
  String cycleDuration(int totalCycle) {
    return 'Ciclo ${totalCycle}s';
  }

  @override
  String get inhaleLabel => 'Inspirare';

  @override
  String get holdLabel => 'Trattenere';

  @override
  String get exhaleLabel => 'Espirare';

  @override
  String get startExercise => 'Inizia esercizio';

  @override
  String get configLoadError => 'Errore nel caricamento della configurazione';

  @override
  String get phaseInhale => 'Inspira';

  @override
  String get phaseHold => 'Trattieni';

  @override
  String get phaseExhale => 'Espira';

  @override
  String get phaseIdle => 'Pronto';

  @override
  String cycleCount(int cycle) {
    return 'Ciclo $cycle';
  }

  @override
  String completedCycles(int cycles) {
    return 'Completato! $cycles cicli';
  }

  @override
  String get readyToStart => 'Pronto per iniziare';

  @override
  String cycleProgress(int current, int total) {
    return 'Ciclo $current/$total';
  }

  @override
  String get animPolygonMorph => 'Poligoni';

  @override
  String get animParticleGather => 'Particelle';

  @override
  String get animRippleRings => 'Onde';
}
