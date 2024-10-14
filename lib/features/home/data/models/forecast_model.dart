import 'package:json_annotation/json_annotation.dart';

import 'astro_model.dart';

part 'forecast_model.g.dart';

// Forecast Model
@JsonSerializable()
class ForecastModel {
  final String date;

  @JsonKey(name: 'date_epoch')
  final int dateEpoch;

  final AstroModel astro;
  final int mintemp;
  final int maxtemp;
  final int avgtemp;
  final int totalsnow;
  final int sunhour;

  @JsonKey(name: 'uv_index')
  final int uvIndex;

  ForecastModel({
    required this.date,
    required this.dateEpoch,
    required this.astro,
    required this.mintemp,
    required this.maxtemp,
    required this.avgtemp,
    required this.totalsnow,
    required this.sunhour,
    required this.uvIndex,
  });

  factory ForecastModel.fromJson(Map<String, dynamic> json) =>
      _$ForecastModelFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastModelToJson(this);
}
