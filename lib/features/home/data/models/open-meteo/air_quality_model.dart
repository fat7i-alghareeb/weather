import 'package:json_annotation/json_annotation.dart';

part 'air_quality_model.g.dart';

@JsonSerializable()
class AirQualityModel {
  final AirQualityData hourly;

  AirQualityModel({required this.hourly});

  factory AirQualityModel.fromJson(Map<String, dynamic> json) =>
      _$AirQualityModelFromJson(json);
  Map<String, dynamic> toJson() => _$AirQualityModelToJson(this);
}

@JsonSerializable()
class AirQualityData {
  @JsonKey(name: 'pm2_5')
  final List<double> airQualities;

  AirQualityData({required this.airQualities});

  factory AirQualityData.fromJson(Map<String, dynamic> json) =>
      _$AirQualityDataFromJson(json);
  Map<String, dynamic> toJson() => _$AirQualityDataToJson(this);
}
