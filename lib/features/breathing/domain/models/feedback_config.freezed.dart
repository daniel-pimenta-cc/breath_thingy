// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedback_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FeedbackConfig _$FeedbackConfigFromJson(Map<String, dynamic> json) {
  return _FeedbackConfig.fromJson(json);
}

/// @nodoc
mixin _$FeedbackConfig {
  bool get hapticEnabled => throw _privateConstructorUsedError;

  /// Serializes this FeedbackConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeedbackConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedbackConfigCopyWith<FeedbackConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackConfigCopyWith<$Res> {
  factory $FeedbackConfigCopyWith(
    FeedbackConfig value,
    $Res Function(FeedbackConfig) then,
  ) = _$FeedbackConfigCopyWithImpl<$Res, FeedbackConfig>;
  @useResult
  $Res call({bool hapticEnabled});
}

/// @nodoc
class _$FeedbackConfigCopyWithImpl<$Res, $Val extends FeedbackConfig>
    implements $FeedbackConfigCopyWith<$Res> {
  _$FeedbackConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedbackConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? hapticEnabled = null}) {
    return _then(
      _value.copyWith(
            hapticEnabled: null == hapticEnabled
                ? _value.hapticEnabled
                : hapticEnabled // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FeedbackConfigImplCopyWith<$Res>
    implements $FeedbackConfigCopyWith<$Res> {
  factory _$$FeedbackConfigImplCopyWith(
    _$FeedbackConfigImpl value,
    $Res Function(_$FeedbackConfigImpl) then,
  ) = __$$FeedbackConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool hapticEnabled});
}

/// @nodoc
class __$$FeedbackConfigImplCopyWithImpl<$Res>
    extends _$FeedbackConfigCopyWithImpl<$Res, _$FeedbackConfigImpl>
    implements _$$FeedbackConfigImplCopyWith<$Res> {
  __$$FeedbackConfigImplCopyWithImpl(
    _$FeedbackConfigImpl _value,
    $Res Function(_$FeedbackConfigImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FeedbackConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? hapticEnabled = null}) {
    return _then(
      _$FeedbackConfigImpl(
        hapticEnabled: null == hapticEnabled
            ? _value.hapticEnabled
            : hapticEnabled // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedbackConfigImpl implements _FeedbackConfig {
  const _$FeedbackConfigImpl({this.hapticEnabled = true});

  factory _$FeedbackConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedbackConfigImplFromJson(json);

  @override
  @JsonKey()
  final bool hapticEnabled;

  @override
  String toString() {
    return 'FeedbackConfig(hapticEnabled: $hapticEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedbackConfigImpl &&
            (identical(other.hapticEnabled, hapticEnabled) ||
                other.hapticEnabled == hapticEnabled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, hapticEnabled);

  /// Create a copy of FeedbackConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedbackConfigImplCopyWith<_$FeedbackConfigImpl> get copyWith =>
      __$$FeedbackConfigImplCopyWithImpl<_$FeedbackConfigImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedbackConfigImplToJson(this);
  }
}

abstract class _FeedbackConfig implements FeedbackConfig {
  const factory _FeedbackConfig({final bool hapticEnabled}) =
      _$FeedbackConfigImpl;

  factory _FeedbackConfig.fromJson(Map<String, dynamic> json) =
      _$FeedbackConfigImpl.fromJson;

  @override
  bool get hapticEnabled;

  /// Create a copy of FeedbackConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedbackConfigImplCopyWith<_$FeedbackConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
