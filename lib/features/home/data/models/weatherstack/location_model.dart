import 'package:json_annotation/json_annotation.dart';

part 'location_model.g.dart';

@JsonSerializable()
class LocationModel {
  final String name;
  final String country;
  final String region;
  final String lat;
  final String lon;

  @JsonKey(name: 'timezone_id')
  final String timezoneId;

  final String localtime;

  @JsonKey(name: 'localtime_epoch')
  final int localtimeEpoch;

  @JsonKey(name: 'utc_offset')
  final String utcOffset;

  LocationModel({
    required this.name,
    required this.country,
    required this.region,
    required this.lat,
    required this.lon,
    required this.timezoneId,
    required this.localtime,
    required this.localtimeEpoch,
    required this.utcOffset,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);

  Map<String, dynamic> toJson() => _$LocationModelToJson(this);
}
