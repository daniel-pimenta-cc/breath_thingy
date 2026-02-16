// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_config_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$feedbackConfigRepositoryHash() =>
    r'ec8f0e95ee4e63ba9d3da76be2d1b79775b96add';

/// See also [feedbackConfigRepository].
@ProviderFor(feedbackConfigRepository)
final feedbackConfigRepositoryProvider =
    FutureProvider<FeedbackConfigRepository>.internal(
      feedbackConfigRepository,
      name: r'feedbackConfigRepositoryProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$feedbackConfigRepositoryHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FeedbackConfigRepositoryRef =
    FutureProviderRef<FeedbackConfigRepository>;
String _$feedbackConfigNotifierHash() =>
    r'8d935615074ef955374ea30765355b225abfa722';

/// See also [FeedbackConfigNotifier].
@ProviderFor(FeedbackConfigNotifier)
final feedbackConfigNotifierProvider =
    AsyncNotifierProvider<FeedbackConfigNotifier, FeedbackConfig>.internal(
      FeedbackConfigNotifier.new,
      name: r'feedbackConfigNotifierProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$feedbackConfigNotifierHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$FeedbackConfigNotifier = AsyncNotifier<FeedbackConfig>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
