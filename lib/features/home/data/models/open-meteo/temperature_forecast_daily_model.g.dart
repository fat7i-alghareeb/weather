// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temperature_forecast_daily_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TemperatureForecastDailyModel _$TemperatureForecastDailyModelFromJson(
        Map<String, dynamic> json) =>
    TemperatureForecastDailyModel(
      daily:
          TemperatureDataDaily.fromJson(json['daily'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TemperatureForecastDailyModelToJson(
        TemperatureForecastDailyModel instance) =>
    <String, dynamic>{
      'daily': instance.daily,
    };

TemperatureDataDaily _$TemperatureDataDailyFromJson(
        Map<String, dynamic> json) =>
    TemperatureDataDaily(
      temperatures: (json['temperature_2m_max'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$TemperatureDataDailyToJson(
        TemperatureDataDaily instance) =>
    <String, dynamic>{
      'temperature_2m_max': instance.temperatures,
    };
