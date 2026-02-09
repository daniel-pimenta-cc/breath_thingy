// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => 'Breath Thingy';

  @override
  String get animationSection => '애니메이션';

  @override
  String get timesSection => '시간';

  @override
  String cycleDuration(int totalCycle) {
    return '사이클 $totalCycle초';
  }

  @override
  String get inhaleLabel => '들이쉬기';

  @override
  String get holdLabel => '멈추기';

  @override
  String get exhaleLabel => '내쉬기';

  @override
  String get startExercise => '운동 시작';

  @override
  String get configLoadError => '설정 로드 오류';

  @override
  String get phaseInhale => '들이쉬세요';

  @override
  String get phaseHold => '멈추세요';

  @override
  String get phaseExhale => '내쉬세요';

  @override
  String get phaseIdle => '준비';

  @override
  String cycleCount(int cycle) {
    return '사이클 $cycle';
  }

  @override
  String completedCycles(int cycles) {
    return '완료! $cycles 사이클';
  }

  @override
  String get readyToStart => '시작 준비 완료';

  @override
  String cycleProgress(int current, int total) {
    return '사이클 $current/$total';
  }

  @override
  String get animPolygonMorph => '폴리곤';

  @override
  String get animParticleGather => '파티클';

  @override
  String get animRippleRings => '파동';
}
