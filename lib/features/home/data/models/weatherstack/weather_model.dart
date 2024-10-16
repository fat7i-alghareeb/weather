import 'package:json_annotation/json_annotation.dart';
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
}
