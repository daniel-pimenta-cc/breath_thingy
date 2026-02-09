// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'breathing_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BreathingConfig _$BreathingConfigFromJson(Map<String, dynamic> json) {
  return _BreathingConfig.fromJson(json);
}

/// @nodoc
mixin _$BreathingConfig {
  int get inhaleDuration => throw _privateConstructorUsedError;
  int get holdDuration => throw _privateConstructorUsedError;
  int get exhaleDuration => throw _privateConstructorUsedError;
  BreathingAnimStyle get animationStyle => throw _privateConstructorUsedError;

  /// Serializes this BreathingConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BreathingConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BreathingConfigCopyWith<BreathingConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreathingConfigCopyWith<$Res> {
  factory $BreathingConfigCopyWith(
    BreathingConfig value,
    $Res Function(BreathingConfig) then,
  ) = _$BreathingConfigCopyWithImpl<$Res, BreathingConfig>;
  @useResult
  $Res call({
    int inhaleDuration,
    int holdDuration,
    int exhaleDuration,
    BreathingAnimStyle animationStyle,
  });
}

/// @nodoc
class _$BreathingConfigCopyWithImpl<$Res, $Val extends BreathingConfig>
    implements $BreathingConfigCopyWith<$Res> {
  _$BreathingConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BreathingConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inhaleDuration = null,
    Object? holdDuration = null,
    Object? exhaleDuration = null,
    Object? animationStyle = null,
  }) {
    return _then(
      _value.copyWith(
            inhaleDuration: null == inhaleDuration
                ? _value.inhaleDuration
                : inhaleDuration // ignore: cast_nullable_to_non_nullable
                      as int,
            holdDuration: null == holdDuration
                ? _value.holdDuration
                : holdDuration // ignore: cast_nullable_to_non_nullable
                      as int,
            exhaleDuration: null == exhaleDuration
                ? _value.exhaleDuration
                : exhaleDuration // ignore: cast_nullable_to_non_nullable
                      as int,
            animationStyle: null == animationStyle
                ? _value.animationStyle
                : animationStyle // ignore: cast_nullable_to_non_nullable
                      as BreathingAnimStyle,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BreathingConfigImplCopyWith<$Res>
    implements $BreathingConfigCopyWith<$Res> {
  factory _$$BreathingConfigImplCopyWith(
    _$BreathingConfigImpl value,
    $Res Function(_$BreathingConfigImpl) then,
  ) = __$$BreathingConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int inhaleDuration,
    int holdDuration,
    int exhaleDuration,
    BreathingAnimStyle animationStyle,
  });
}

/// @nodoc
class __$$BreathingConfigImplCopyWithImpl<$Res>
    extends _$BreathingConfigCopyWithImpl<$Res, _$BreathingConfigImpl>
    implements _$$BreathingConfigImplCopyWith<$Res> {
  __$$BreathingConfigImplCopyWithImpl(
    _$BreathingConfigImpl _value,
    $Res Function(_$BreathingConfigImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BreathingConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inhaleDuration = null,
    Object? holdDuration = null,
    Object? exhaleDuration = null,
    Object? animationStyle = null,
  }) {
    return _then(
      _$BreathingConfigImpl(
        inhaleDuration: null == inhaleDuration
            ? _value.inhaleDuration
            : inhaleDuration // ignore: cast_nullable_to_non_nullable
                  as int,
        holdDuration: null == holdDuration
            ? _value.holdDuration
            : holdDuration // ignore: cast_nullable_to_non_nullable
                  as int,
        exhaleDuration: null == exhaleDuration
            ? _value.exhaleDuration
            : exhaleDuration // ignore: cast_nullable_to_non_nullable
                  as int,
        animationStyle: null == animationStyle
            ? _value.animationStyle
            : animationStyle // ignore: cast_nullable_to_non_nullable
                  as BreathingAnimStyle,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BreathingConfigImpl implements _BreathingConfig {
  const _$BreathingConfigImpl({
    this.inhaleDuration = BreathingDefaults.inhaleDuration,
    this.holdDuration = BreathingDefaults.holdDuration,
    this.exhaleDuration = BreathingDefaults.exhaleDuration,
    this.animationStyle = BreathingAnimStyle.polygonMorph,
  });

  factory _$BreathingConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$BreathingConfigImplFromJson(json);

  @override
  @JsonKey()
  final int inhaleDuration;
  @override
  @JsonKey()
  final int holdDuration;
  @override
  @JsonKey()
  final int exhaleDuration;
  @override
  @JsonKey()
  final BreathingAnimStyle animationStyle;

  @override
  String toString() {
    return 'BreathingConfig(inhaleDuration: $inhaleDuration, holdDuration: $holdDuration, exhaleDuration: $exhaleDuration, animationStyle: $animationStyle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BreathingConfigImpl &&
            (identical(other.inhaleDuration, inhaleDuration) ||
                other.inhaleDuration == inhaleDuration) &&
            (identical(other.holdDuration, holdDuration) ||
                other.holdDuration == holdDuration) &&
            (identical(other.exhaleDuration, exhaleDuration) ||
                other.exhaleDuration == exhaleDuration) &&
            (identical(other.animationStyle, animationStyle) ||
                other.animationStyle == animationStyle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    inhaleDuration,
    holdDuration,
    exhaleDuration,
    animationStyle,
  );

  /// Create a copy of BreathingConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BreathingConfigImplCopyWith<_$BreathingConfigImpl> get copyWith =>
      __$$BreathingConfigImplCopyWithImpl<_$BreathingConfigImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BreathingConfigImplToJson(this);
  }
}

abstract class _BreathingConfig implements BreathingConfig {
  const factory _BreathingConfig({
    final int inhaleDuration,
    final int holdDuration,
    final int exhaleDuration,
    final BreathingAnimStyle animationStyle,
  }) = _$BreathingConfigImpl;

  factory _BreathingConfig.fromJson(Map<String, dynamic> json) =
      _$BreathingConfigImpl.fromJson;

  @override
  int get inhaleDuration;
  @override
  int get holdDuration;
  @override
  int get exhaleDuration;
  @override
  BreathingAnimStyle get animationStyle;

  /// Create a copy of BreathingConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BreathingConfigImplCopyWith<_$BreathingConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
