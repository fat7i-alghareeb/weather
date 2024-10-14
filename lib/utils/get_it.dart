import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_app/features/home/data/repo/weather_repo.dart';
import 'package:weather_app/utils/services/api_service.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiService>(ApiService(createAndSetupDio()));
  getIt.registerSingleton<WeatherRepo>(WeatherRepo(getIt.get<ApiService>()));
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
