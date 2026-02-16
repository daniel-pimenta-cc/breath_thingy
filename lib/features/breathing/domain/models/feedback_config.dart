import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedback_config.freezed.dart';
part 'feedback_config.g.dart';

@freezed
abstract class FeedbackConfig with _$FeedbackConfig {
  const factory FeedbackConfig({
    @Default(true) bool hapticEnabled,
  }) = _FeedbackConfig;

  factory FeedbackConfig.fromJson(Map<String, dynamic> json) =>
      _$FeedbackConfigFromJson(json);
}
