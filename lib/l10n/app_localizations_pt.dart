// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'Breath Thingy';

  @override
  String get animationSection => 'Animação';

  @override
  String get timesSection => 'Tempos';

  @override
  String cycleDuration(int totalCycle) {
    return 'Ciclo ${totalCycle}s';
  }

  @override
  String get inhaleLabel => 'Inspirar';

  @override
  String get holdLabel => 'Segurar';

  @override
  String get exhaleLabel => 'Expirar';

  @override
  String get startExercise => 'Iniciar Exercício';

  @override
  String get configLoadError => 'Erro ao carregar configuração';

  @override
  String get phaseInhale => 'Inspire';

  @override
  String get phaseHold => 'Segure';

  @override
  String get phaseExhale => 'Expire';

  @override
  String get phaseIdle => 'Pronto';

  @override
  String cycleCount(int cycle) {
    return 'Ciclo $cycle';
  }

  @override
  String completedCycles(int cycles) {
    return 'Concluído! $cycles ciclos';
  }

  @override
  String get readyToStart => 'Pronto para começar';

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
