import 'package:json_annotation/json_annotation.dart';

part 'astro_model.g.dart';

// Astro Model
@JsonSerializable()
class AstroModel {
  final String sunrise;
  final String sunset;
  final String moonrise;
  final String moonset;

  @JsonKey(name: 'moon_phase')
  final String moonPhase;

  @JsonKey(name: 'moon_illumination')
  final int moonIllumination;

  AstroModel({
    required this.sunrise,
    required this.sunset,
    required this.moonrise,
    required this.moonset,
    required this.moonPhase,
    required this.moonIllumination,
  });

  factory AstroModel.fromJson(Map<String, dynamic> json) =>
      _$AstroModelFromJson(json);

  Map<String, dynamic> toJson() => _$AstroModelToJson(this);
}
