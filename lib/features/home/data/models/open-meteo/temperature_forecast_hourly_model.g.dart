// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temperature_forecast_hourly_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TemperatureForecastHourlyModel _$TemperatureForecastHourlyModelFromJson(
        Map<String, dynamic> json) =>
    TemperatureForecastHourlyModel(
      hourly: TemperatureDataHourly.fromJson(
          json['hourly'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TemperatureForecastHourlyModelToJson(
        TemperatureForecastHourlyModel instance) =>
    <String, dynamic>{
      'hourly': instance.hourly,
    };

TemperatureDataHourly _$TemperatureDataHourlyFromJson(
        Map<String, dynamic> json) =>
    TemperatureDataHourly(
      temperatures: (json['temperature_2m'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$TemperatureDataHourlyToJson(
        TemperatureDataHourly instance) =>
    <String, dynamic>{
      'temperature_2m': instance.temperatures,
    };
