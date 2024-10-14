import 'package:json_annotation/json_annotation.dart';

part 'request_model.g.dart';

@JsonSerializable()
class RequestModel {
  final String type;
  final String query;
  final String language;
  final String unit;

  RequestModel({
    required this.type,
    required this.query,
    required this.language,
    required this.unit,
  });

  factory RequestModel.fromJson(Map<String, dynamic> json) =>
      _$RequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$RequestModelToJson(this);
}
