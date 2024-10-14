import 'package:weather_app/features/home/domain/entities/weather_entity.dart';

abstract class WeatherState {}

final class WeatherInitial extends WeatherState {}

final class WeatherSuccess extends WeatherState {
  final WeatherEntity weatherEntity;

  WeatherSuccess({required this.weatherEntity});
}

final class WeatherFailure extends WeatherState {
  final String message;

  WeatherFailure({required this.message});
}

final class WeatherLoading extends WeatherState {}
