// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breathing_config_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sharedPreferencesHash() => r'50d46e3f8d9f32715d0f3efabdce724e4b2593b4';

/// See also [sharedPreferences].
@ProviderFor(sharedPreferences)
final sharedPreferencesProvider = FutureProvider<SharedPreferences>.internal(
  sharedPreferences,
  name: r'sharedPreferencesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$sharedPreferencesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SharedPreferencesRef = FutureProviderRef<SharedPreferences>;
String _$breathingConfigRepositoryHash() =>
    r'4eb85c25a66e824b8caaabf234c5241518aed70f';

/// See also [breathingConfigRepository].
@ProviderFor(breathingConfigRepository)
final breathingConfigRepositoryProvider =
    FutureProvider<BreathingConfigRepository>.internal(
      breathingConfigRepository,
      name: r'breathingConfigRepositoryProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$breathingConfigRepositoryHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef BreathingConfigRepositoryRef =
    FutureProviderRef<BreathingConfigRepository>;
String _$breathingConfigNotifierHash() =>
    r'9566c6bcbefab9d98571dbfded0bc46453087e7d';

/// See also [BreathingConfigNotifier].
@ProviderFor(BreathingConfigNotifier)
final breathingConfigNotifierProvider =
    AsyncNotifierProvider<BreathingConfigNotifier, BreathingConfig>.internal(
      BreathingConfigNotifier.new,
      name: r'breathingConfigNotifierProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$breathingConfigNotifierHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$BreathingConfigNotifier = AsyncNotifier<BreathingConfig>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
