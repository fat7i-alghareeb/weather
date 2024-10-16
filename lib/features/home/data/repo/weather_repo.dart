import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:weather_app/features/home/data/models/open-meteo/temperature_forecast_hourly_model.dart';
import 'package:weather_app/features/home/data/models/weatherstack/weather_model.dart';
import 'package:weather_app/features/home/domain/entities/weather_entity.dart';
import 'package:weather_app/utils/functions/to_entity.dart';
import 'package:weather_app/utils/services/air_quality_api_service.dart';
import 'package:weather_app/utils/services/api_service.dart';

import '../../../../utils/errors/failure.dart';
import '../../../../utils/services/temperature_forecast_api_service.dart';
import '../models/open-meteo/air_quality_model.dart';
import '../models/open-meteo/temperature_forecast_daily_model.dart';

class WeatherRepo {
  final ApiService apiService;
  final AirQualityApiService airQualityApiService;
  final TemperatureForecastApiService temperatureForecastApiService;
  WeatherRepo({
    required this.apiService,
    required this.airQualityApiService,
    required this.temperatureForecastApiService,
  });
  Future<Either<Failure, WeatherEntity>> getWeatherData() async {
    try {
      WeatherModel weatherModel = await apiService.getWeather();
      AirQualityModel airQualityModel =
          await airQualityApiService.getAirQuality();
      TemperatureForecastDailyModel temperatureForecastDailyModel =
          await temperatureForecastApiService.getTemperatureForecastDaily();
      TemperatureForecastHourlyModel temperatureForecastHourlyModel =
          await temperatureForecastApiService.getTemperatureForecastHourly();
      WeatherEntity weatherEntity = toEntity(
        temperatureForecastHourlyModel: temperatureForecastHourlyModel,
        airQualityModel: airQualityModel,
        weatherModel: weatherModel,
        temperatureForecastDailyModel: temperatureForecastDailyModel,
      );
      return right(weatherEntity);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDiorError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
