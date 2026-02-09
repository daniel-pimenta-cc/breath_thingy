import '../models/breathing_config.dart';

abstract class BreathingConfigRepository {
  Future<BreathingConfig> load();
  Future<void> save(BreathingConfig config);
}
