import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repositories/feedback_config_repository_impl.dart';
import '../../domain/models/feedback_config.dart';
import '../../domain/repositories/feedback_config_repository.dart';
import 'breathing_config_provider.dart';

part 'feedback_config_provider.g.dart';

@Riverpod(keepAlive: true)
Future<FeedbackConfigRepository> feedbackConfigRepository(Ref ref) async {
  final prefs = await ref.watch(sharedPreferencesProvider.future);
  return FeedbackConfigRepositoryImpl(prefs);
}

@Riverpod(keepAlive: true)
class FeedbackConfigNotifier extends _$FeedbackConfigNotifier {
  @override
  Future<FeedbackConfig> build() async {
    final repo = await ref.watch(feedbackConfigRepositoryProvider.future);
    return repo.load();
  }

  Future<void> toggleHaptic() async {
    final current = state.valueOrNull ?? const FeedbackConfig();
    final updated = current.copyWith(hapticEnabled: !current.hapticEnabled);
    final repo = await ref.read(feedbackConfigRepositoryProvider.future);
    await repo.save(updated);
    state = AsyncData(updated);
  }
}
