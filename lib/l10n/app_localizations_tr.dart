// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appTitle => 'Breath Thingy';

  @override
  String get animationSection => 'Animasyon';

  @override
  String get timesSection => 'Süreler';

  @override
  String cycleDuration(int totalCycle) {
    return 'Döngü ${totalCycle}s';
  }

  @override
  String get inhaleLabel => 'Nefes Al';

  @override
  String get holdLabel => 'Tut';

  @override
  String get exhaleLabel => 'Nefes Ver';

  @override
  String get startExercise => 'Egzersizi Başlat';

  @override
  String get configLoadError => 'Yapılandırma yüklenirken hata oluştu';

  @override
  String get phaseInhale => 'Nefes Al';

  @override
  String get phaseHold => 'Tut';

  @override
  String get phaseExhale => 'Nefes Ver';

  @override
  String get phaseIdle => 'Hazır';

  @override
  String cycleCount(int cycle) {
    return 'Döngü $cycle';
  }

  @override
  String completedCycles(int cycles) {
    return 'Tamamlandı! $cycles döngü';
  }

  @override
  String get readyToStart => 'Başlamaya hazır';

  @override
  String cycleProgress(int current, int total) {
    return 'Döngü $current/$total';
  }

  @override
  String get animPolygonMorph => 'Çokgenler';

  @override
  String get animParticleGather => 'Parçacıklar';

  @override
  String get animRippleRings => 'Dalgalar';
}
