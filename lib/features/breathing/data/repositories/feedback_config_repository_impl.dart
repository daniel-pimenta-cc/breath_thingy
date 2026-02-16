import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/models/feedback_config.dart';
import '../../domain/repositories/feedback_config_repository.dart';

class FeedbackConfigRepositoryImpl implements FeedbackConfigRepository {
  FeedbackConfigRepositoryImpl(this._prefs);

  final SharedPreferences _prefs;

  static const _keyHaptic = 'feedback_haptic_enabled';

  @override
  Future<FeedbackConfig> load() async {
    final haptic = _prefs.getBool(_keyHaptic) ?? true;
    return FeedbackConfig(hapticEnabled: haptic);
  }

  @override
  Future<void> save(FeedbackConfig config) async {
    await _prefs.setBool(_keyHaptic, config.hapticEnabled);
  }
}
