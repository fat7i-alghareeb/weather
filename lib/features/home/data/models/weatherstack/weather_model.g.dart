// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) => WeatherModel(
      request: RequestModel.fromJson(json['request'] as Map<String, dynamic>),
      location:
          LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      current:
          CurrentWeatherModel.fromJson(json['current'] as Map<String, dynamic>),
      forecast: (json['forecast'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, ForecastModel.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$WeatherModelToJson(WeatherModel instance) =>
    <String, dynamic>{
      'request': instance.request,
      'location': instance.location,
      'current': instance.current,
      'forecast': instance.forecast,
    };
