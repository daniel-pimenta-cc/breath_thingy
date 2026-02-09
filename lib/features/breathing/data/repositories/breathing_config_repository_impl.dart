import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/constants/breathing_defaults.dart';
import '../../domain/models/animation_style.dart';
import '../../domain/models/breathing_config.dart';
import '../../domain/repositories/breathing_config_repository.dart';

class BreathingConfigRepositoryImpl implements BreathingConfigRepository {
  BreathingConfigRepositoryImpl(this._prefs);

  final SharedPreferences _prefs;

  static const _keyInhale = 'breath_config_inhale';
  static const _keyHold = 'breath_config_hold';
  static const _keyExhale = 'breath_config_exhale';
  static const _keyAnimation = 'breath_config_animation';

  @override
  Future<BreathingConfig> load() async {
    final inhale =
        _prefs.getInt(_keyInhale) ?? BreathingDefaults.inhaleDuration;
    final hold = _prefs.getInt(_keyHold) ?? BreathingDefaults.holdDuration;
    final exhale =
        _prefs.getInt(_keyExhale) ?? BreathingDefaults.exhaleDuration;
    final animName = _prefs.getString(_keyAnimation);

    final animStyle = animName != null
        ? BreathingAnimStyle.values.firstWhere(
            (e) => e.name == animName,
            orElse: () => BreathingAnimStyle.polygonMorph,
          )
        : BreathingAnimStyle.polygonMorph;

    return BreathingConfig(
      inhaleDuration: inhale,
      holdDuration: hold,
      exhaleDuration: exhale,
      animationStyle: animStyle,
    );
  }

  @override
  Future<void> save(BreathingConfig config) async {
    await Future.wait([
      _prefs.setInt(_keyInhale, config.inhaleDuration),
      _prefs.setInt(_keyHold, config.holdDuration),
      _prefs.setInt(_keyExhale, config.exhaleDuration),
      _prefs.setString(_keyAnimation, config.animationStyle.name),
    ]);
  }
}
