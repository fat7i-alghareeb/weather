import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_app/features/home/data/repo/weather_repo.dart';
import 'package:weather_app/utils/services/api_service.dart';

import 'services/air_quality_api_service.dart';
import 'services/temperature_forecast_api_service.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiService>(ApiService(createAndSetupDio()));
  getIt.registerSingleton<TemperatureForecastApiService>(
      TemperatureForecastApiService(createAndSetupDio()));
  getIt.registerSingleton<AirQualityApiService>(
      AirQualityApiService(createAndSetupDio()));
  getIt.registerSingleton<WeatherRepo>(WeatherRepo(
    apiService: getIt.get<ApiService>(),
    airQualityApiService: getIt.get<AirQualityApiService>(),
    temperatureForecastApiService: getIt.get<TemperatureForecastApiService>(),
  ));
}

Dio createAndSetupDio() {
  Dio dio = Dio();

  dio
    ..options.connectTimeout = const Duration(milliseconds: 20000)
    ..options.receiveTimeout = const Duration(milliseconds: 20000);

  dio.interceptors.add(LogInterceptor(
    responseBody: true,
    error: true,
    requestHeader: false,
    responseHeader: false,
    request: true,
    requestBody: true,
  ));

  return dio;
}
