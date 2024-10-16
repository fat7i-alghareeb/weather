import 'package:json_annotation/json_annotation.dart';

part 'temperature_forecast_daily_model.g.dart';

@JsonSerializable()
class TemperatureForecastDailyModel {
  final TemperatureDataDaily daily;

  TemperatureForecastDailyModel({required this.daily});

  factory TemperatureForecastDailyModel.fromJson(Map<String, dynamic> json) =>
      _$TemperatureForecastDailyModelFromJson(json);
  Map<String, dynamic> toJson() => _$TemperatureForecastDailyModelToJson(this);
}

@JsonSerializable()
class TemperatureDataDaily {
  @JsonKey(name: 'temperature_2m_max')
  final List<double> temperatures;

  TemperatureDataDaily({required this.temperatures});

  factory TemperatureDataDaily.fromJson(Map<String, dynamic> json) =>
      _$TemperatureDataDailyFromJson(json);
  Map<String, dynamic> toJson() => _$TemperatureDataDailyToJson(this);
}
