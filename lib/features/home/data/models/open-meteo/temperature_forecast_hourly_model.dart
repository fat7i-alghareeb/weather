import 'package:json_annotation/json_annotation.dart';

part 'temperature_forecast_hourly_model.g.dart';

@JsonSerializable()
class TemperatureForecastHourlyModel {
  final TemperatureDataHourly hourly;

  TemperatureForecastHourlyModel({required this.hourly});

  factory TemperatureForecastHourlyModel.fromJson(Map<String, dynamic> json) =>
      _$TemperatureForecastHourlyModelFromJson(json);
  Map<String, dynamic> toJson() => _$TemperatureForecastHourlyModelToJson(this);
}

@JsonSerializable()
class TemperatureDataHourly {
  @JsonKey(name: 'temperature_2m')
  final List<double> temperatures;

  TemperatureDataHourly({required this.temperatures});

  factory TemperatureDataHourly.fromJson(Map<String, dynamic> json) =>
      _$TemperatureDataHourlyFromJson(json);
  Map<String, dynamic> toJson() => _$TemperatureDataHourlyToJson(this);
}
