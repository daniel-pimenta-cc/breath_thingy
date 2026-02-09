import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/constants/breathing_defaults.dart';
import 'animation_style.dart';

part 'breathing_config.freezed.dart';
part 'breathing_config.g.dart';

@freezed
abstract class BreathingConfig with _$BreathingConfig {
  const factory BreathingConfig({
    @Default(BreathingDefaults.inhaleDuration) int inhaleDuration,
    @Default(BreathingDefaults.holdDuration) int holdDuration,
    @Default(BreathingDefaults.exhaleDuration) int exhaleDuration,
    @Default(BreathingAnimStyle.polygonMorph) BreathingAnimStyle animationStyle,
  }) = _BreathingConfig;

  factory BreathingConfig.fromJson(Map<String, dynamic> json) =>
      _$BreathingConfigFromJson(json);
}
