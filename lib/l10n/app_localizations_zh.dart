// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => 'Breath Thingy';

  @override
  String get animationSection => '动画';

  @override
  String get timesSection => '时间';

  @override
  String cycleDuration(int totalCycle) {
    return '周期 $totalCycle秒';
  }

  @override
  String get inhaleLabel => '吸气';

  @override
  String get holdLabel => '屏息';

  @override
  String get exhaleLabel => '呼气';

  @override
  String get startExercise => '开始练习';

  @override
  String get configLoadError => '加载配置出错';

  @override
  String get phaseInhale => '吸气';

  @override
  String get phaseHold => '屏息';

  @override
  String get phaseExhale => '呼气';

  @override
  String get phaseIdle => '准备';

  @override
  String cycleCount(int cycle) {
    return '周期 $cycle';
  }

  @override
  String completedCycles(int cycles) {
    return '完成！$cycles个周期';
  }

  @override
  String get readyToStart => '准备开始';

  @override
  String cycleProgress(int current, int total) {
    return '周期 $current/$total';
  }

  @override
  String get animPolygonMorph => '多边形';

  @override
  String get animParticleGather => '粒子';

  @override
  String get animRippleRings => '波纹';
}
