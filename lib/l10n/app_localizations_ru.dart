// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Breath Thingy';

  @override
  String get animationSection => 'Анимация';

  @override
  String get timesSection => 'Время';

  @override
  String cycleDuration(int totalCycle) {
    return 'Цикл $totalCycleс';
  }

  @override
  String get inhaleLabel => 'Вдох';

  @override
  String get holdLabel => 'Задержка';

  @override
  String get exhaleLabel => 'Выдох';

  @override
  String get startExercise => 'Начать упражнение';

  @override
  String get configLoadError => 'Ошибка загрузки конфигурации';

  @override
  String get phaseInhale => 'Вдохните';

  @override
  String get phaseHold => 'Задержите';

  @override
  String get phaseExhale => 'Выдохните';

  @override
  String get phaseIdle => 'Готово';

  @override
  String cycleCount(int cycle) {
    return 'Цикл $cycle';
  }

  @override
  String completedCycles(int cycles) {
    return 'Завершено! Циклов: $cycles';
  }

  @override
  String get readyToStart => 'Готов к началу';

  @override
  String cycleProgress(int current, int total) {
    return 'Цикл $current/$total';
  }

  @override
  String get animPolygonMorph => 'Полигоны';

  @override
  String get animParticleGather => 'Частицы';

  @override
  String get animRippleRings => 'Волны';
}
