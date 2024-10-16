// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForecastModel _$ForecastModelFromJson(Map<String, dynamic> json) =>
    ForecastModel(
      date: json['date'] as String,
      dateEpoch: (json['date_epoch'] as num).toInt(),
      astro: AstroModel.fromJson(json['astro'] as Map<String, dynamic>),
      mintemp: (json['mintemp'] as num).toInt(),
      maxtemp: (json['maxtemp'] as num).toInt(),
      avgtemp: (json['avgtemp'] as num).toInt(),
      totalsnow: (json['totalsnow'] as num).toInt(),
      sunhour: (json['sunhour'] as num).toInt(),
      uvIndex: (json['uv_index'] as num).toInt(),
    );

Map<String, dynamic> _$ForecastModelToJson(ForecastModel instance) =>
    <String, dynamic>{
      'date': instance.date,
      'date_epoch': instance.dateEpoch,
      'astro': instance.astro,
      'mintemp': instance.mintemp,
      'maxtemp': instance.maxtemp,
      'avgtemp': instance.avgtemp,
      'totalsnow': instance.totalsnow,
      'sunhour': instance.sunhour,
      'uv_index': instance.uvIndex,
    };
