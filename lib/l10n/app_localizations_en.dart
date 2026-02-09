// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Breath Thingy';

  @override
  String get animationSection => 'Animation';

  @override
  String get timesSection => 'Timing';

  @override
  String cycleDuration(int totalCycle) {
    return 'Cycle ${totalCycle}s';
  }

  @override
  String get inhaleLabel => 'Inhale';

  @override
  String get holdLabel => 'Hold';

  @override
  String get exhaleLabel => 'Exhale';

  @override
  String get startExercise => 'Start Exercise';

  @override
  String get configLoadError => 'Error loading configuration';

  @override
  String get phaseInhale => 'Inhale';

  @override
  String get phaseHold => 'Hold';

  @override
  String get phaseExhale => 'Exhale';

  @override
  String get phaseIdle => 'Ready';

  @override
  String cycleCount(int cycle) {
    return 'Cycle $cycle';
  }

  @override
  String completedCycles(int cycles) {
    return 'Done! $cycles cycles';
  }

  @override
  String get readyToStart => 'Ready to start';

  @override
  String cycleProgress(int current, int total) {
    return 'Cycle $current/$total';
  }

  @override
  String get animPolygonMorph => 'Polygons';

  @override
  String get animParticleGather => 'Particles';

  @override
  String get animRippleRings => 'Waves';
}
