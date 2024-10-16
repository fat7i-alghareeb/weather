// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'air_quality_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AirQualityModel _$AirQualityModelFromJson(Map<String, dynamic> json) =>
    AirQualityModel(
      hourly: AirQualityData.fromJson(json['hourly'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AirQualityModelToJson(AirQualityModel instance) =>
    <String, dynamic>{
      'hourly': instance.hourly,
    };

AirQualityData _$AirQualityDataFromJson(Map<String, dynamic> json) =>
    AirQualityData(
      airQualities: (json['pm2_5'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$AirQualityDataToJson(AirQualityData instance) =>
    <String, dynamic>{
      'pm2_5': instance.airQualities,
    };
