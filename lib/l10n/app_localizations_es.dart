// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Breath Thingy';

  @override
  String get animationSection => 'Animación';

  @override
  String get timesSection => 'Tiempos';

  @override
  String cycleDuration(int totalCycle) {
    return 'Ciclo ${totalCycle}s';
  }

  @override
  String get inhaleLabel => 'Inhalar';

  @override
  String get holdLabel => 'Sostener';

  @override
  String get exhaleLabel => 'Exhalar';

  @override
  String get startExercise => 'Iniciar Ejercicio';

  @override
  String get configLoadError => 'Error al cargar configuración';

  @override
  String get phaseInhale => 'Inhala';

  @override
  String get phaseHold => 'Sostén';

  @override
  String get phaseExhale => 'Exhala';

  @override
  String get phaseIdle => 'Listo';

  @override
  String cycleCount(int cycle) {
    return 'Ciclo $cycle';
  }

  @override
  String completedCycles(int cycles) {
    return '¡Completado! $cycles ciclos';
  }

  @override
  String get readyToStart => 'Listo para comenzar';

  @override
  String cycleProgress(int current, int total) {
    return 'Ciclo $current/$total';
  }

  @override
  String get animPolygonMorph => 'Polígonos';

  @override
  String get animParticleGather => 'Partículas';

  @override
  String get animRippleRings => 'Ondas';
}
