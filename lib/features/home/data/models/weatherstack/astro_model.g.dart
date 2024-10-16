// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'astro_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AstroModel _$AstroModelFromJson(Map<String, dynamic> json) => AstroModel(
      sunrise: json['sunrise'] as String,
      sunset: json['sunset'] as String,
      moonrise: json['moonrise'] as String,
      moonset: json['moonset'] as String,
      moonPhase: json['moon_phase'] as String,
      moonIllumination: (json['moon_illumination'] as num).toInt(),
    );

Map<String, dynamic> _$AstroModelToJson(AstroModel instance) =>
    <String, dynamic>{
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'moonrise': instance.moonrise,
      'moonset': instance.moonset,
      'moon_phase': instance.moonPhase,
      'moon_illumination': instance.moonIllumination,
    };
