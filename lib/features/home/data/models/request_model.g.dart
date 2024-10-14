// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestModel _$RequestModelFromJson(Map<String, dynamic> json) => RequestModel(
      type: json['type'] as String,
      query: json['query'] as String,
      language: json['language'] as String,
      unit: json['unit'] as String,
    );

Map<String, dynamic> _$RequestModelToJson(RequestModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'query': instance.query,
      'language': instance.language,
      'unit': instance.unit,
    };
