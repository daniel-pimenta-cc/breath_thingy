import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/repositories/breathing_config_repository_impl.dart';
import '../../domain/models/breathing_config.dart';
import '../../domain/repositories/breathing_config_repository.dart';

part 'breathing_config_provider.g.dart';

@Riverpod(keepAlive: true)
Future<SharedPreferences> sharedPreferences(Ref ref) async {
  return SharedPreferences.getInstance();
}

@Riverpod(keepAlive: true)
Future<BreathingConfigRepository> breathingConfigRepository(Ref ref) async {
  final prefs = await ref.watch(sharedPreferencesProvider.future);
  return BreathingConfigRepositoryImpl(prefs);
}

@Riverpod(keepAlive: true)
class BreathingConfigNotifier extends _$BreathingConfigNotifier {
  @override
  Future<BreathingConfig> build() async {
    final repo = await ref.watch(breathingConfigRepositoryProvider.future);
    return repo.load();
  }

  Future<void> updateConfig(BreathingConfig config) async {
    final repo = await ref.read(breathingConfigRepositoryProvider.future);
    await repo.save(config);
    state = AsyncData(config);
  }
}
