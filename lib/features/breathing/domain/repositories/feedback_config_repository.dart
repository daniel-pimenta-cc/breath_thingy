import '../models/feedback_config.dart';

abstract class FeedbackConfigRepository {
  Future<FeedbackConfig> load();
  Future<void> save(FeedbackConfig config);
}
