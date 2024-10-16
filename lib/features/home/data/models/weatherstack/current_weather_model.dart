import 'package:json_annotation/json_annotation.dart';

part 'current_weather_model.g.dart';

@JsonSerializable()
class CurrentWeatherModel {
  @JsonKey(name: 'observation_time')
  final String observationTime;

  final int temperature;

  @JsonKey(name: 'weather_code')
  final int weatherCode;

  @JsonKey(name: 'weather_icons')
  final List<String> weatherIcons;

  @JsonKey(name: 'weather_descriptions')
  final List<String> weatherDescriptions;

  @JsonKey(name: 'wind_speed')
  final int windSpeed;

  @JsonKey(name: 'wind_degree')
  final int windDegree;

  @JsonKey(name: 'wind_dir')
  final String windDir;

  final int pressure;
  final int precip;
  final int humidity;
  final int cloudcover;
  final int feelslike;

  @JsonKey(name: 'uv_index')
  final int uvIndex;

  final int visibility;

  @JsonKey(name: 'is_day')
  final String isDay;

  CurrentWeatherModel({
    required this.observationTime,
    required this.temperature,
    required this.weatherCode,
    required this.weatherIcons,
    required this.weatherDescriptions,
    required this.windSpeed,
    required this.windDegree,
    required this.windDir,
    required this.pressure,
    required this.precip,
    required this.humidity,
    required this.cloudcover,
    required this.feelslike,
    required this.uvIndex,
    required this.visibility,
    required this.isDay,
  });

  factory CurrentWeatherModel.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherModelFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentWeatherModelToJson(this);
}
