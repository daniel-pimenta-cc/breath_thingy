// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breathing_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BreathingConfigImpl _$$BreathingConfigImplFromJson(
  Map<String, dynamic> json,
) => _$BreathingConfigImpl(
  inhaleDuration:
      (json['inhaleDuration'] as num?)?.toInt() ??
      BreathingDefaults.inhaleDuration,
  holdDuration:
      (json['holdDuration'] as num?)?.toInt() ?? BreathingDefaults.holdDuration,
  exhaleDuration:
      (json['exhaleDuration'] as num?)?.toInt() ??
      BreathingDefaults.exhaleDuration,
  animationStyle:
      $enumDecodeNullable(
        _$BreathingAnimStyleEnumMap,
        json['animationStyle'],
      ) ??
      BreathingAnimStyle.polygonMorph,
);

Map<String, dynamic> _$$BreathingConfigImplToJson(
  _$BreathingConfigImpl instance,
) => <String, dynamic>{
  'inhaleDuration': instance.inhaleDuration,
  'holdDuration': instance.holdDuration,
  'exhaleDuration': instance.exhaleDuration,
  'animationStyle': _$BreathingAnimStyleEnumMap[instance.animationStyle]!,
};

const _$BreathingAnimStyleEnumMap = {
  BreathingAnimStyle.polygonMorph: 'polygonMorph',
  BreathingAnimStyle.particleGather: 'particleGather',
  BreathingAnimStyle.rippleRings: 'rippleRings',
};
