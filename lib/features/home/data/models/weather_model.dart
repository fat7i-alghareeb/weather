import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/weather_entity.dart';
import 'current_weather_model.dart';
import 'forecast_model.dart';
import 'location_model.dart';
import 'request_model.dart';

part 'weather_model.g.dart';

@JsonSerializable()
class WeatherModel {
  final RequestModel request;
  final LocationModel location;
  final CurrentWeatherModel current;
  final Map<String, ForecastModel> forecast;

  WeatherModel({
    required this.request,
    required this.location,
    required this.current,
    required this.forecast,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherModelToJson(this);

  WeatherEntity toEntity() {
    String sunrise =
        forecast.isNotEmpty ? forecast.values.first.astro.sunrise : 'N/A';
    String sunset =
        forecast.isNotEmpty ? forecast.values.first.astro.sunset : 'N/A';
    int maxTemp = forecast.isNotEmpty ? forecast.values.first.maxtemp : 0;
    int minTemp = forecast.isNotEmpty ? forecast.values.first.mintemp : 0;

    return WeatherEntity(
      locationName: location.name,
      weatherState: current.weatherDescriptions.first,
      sunrise: sunrise,
      sunset: sunset,
      uvIndex: current.uvIndex,
      currentTemp: current.temperature,
      maxTemp: maxTemp,
      minTemp: minTemp,
    );
  }
}
