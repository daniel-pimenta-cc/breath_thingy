import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/models/animation_style.dart';
import '../../domain/models/breathing_config.dart';
import 'breathing_config_provider.dart';

part 'animation_style_provider.g.dart';

@riverpod
class BreathingAnimStyleNotifier extends _$BreathingAnimStyleNotifier {
  @override
  BreathingAnimStyle build() {
    final configAsync = ref.watch(breathingConfigNotifierProvider);
    return configAsync.valueOrNull?.animationStyle ??
        BreathingAnimStyle.polygonMorph;
  }

  Future<void> select(BreathingAnimStyle style) async {
    state = style;
    final configAsync = ref.read(breathingConfigNotifierProvider);
    final config = configAsync.valueOrNull ?? const BreathingConfig();
    await ref
        .read(breathingConfigNotifierProvider.notifier)
        .updateConfig(config.copyWith(animationStyle: style));
  }
}
