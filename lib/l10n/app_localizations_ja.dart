// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'Breath Thingy';

  @override
  String get animationSection => 'アニメーション';

  @override
  String get timesSection => 'タイミング';

  @override
  String cycleDuration(int totalCycle) {
    return 'サイクル $totalCycle秒';
  }

  @override
  String get inhaleLabel => '吸う';

  @override
  String get holdLabel => '止める';

  @override
  String get exhaleLabel => '吐く';

  @override
  String get startExercise => 'エクササイズ開始';

  @override
  String get configLoadError => '設定の読み込みエラー';

  @override
  String get phaseInhale => '吸って';

  @override
  String get phaseHold => '止めて';

  @override
  String get phaseExhale => '吐いて';

  @override
  String get phaseIdle => '準備完了';

  @override
  String cycleCount(int cycle) {
    return 'サイクル $cycle';
  }

  @override
  String completedCycles(int cycles) {
    return '完了！$cyclesサイクル';
  }

  @override
  String get readyToStart => '開始準備完了';

  @override
  String cycleProgress(int current, int total) {
    return 'サイクル $current/$total';
  }

  @override
  String get animPolygonMorph => 'ポリゴン';

  @override
  String get animParticleGather => 'パーティクル';

  @override
  String get animRippleRings => '波紋';
}
