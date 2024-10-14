import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:weather_app/features/home/data/models/weather_model.dart';
import 'package:weather_app/features/home/domain/entities/weather_entity.dart';
import 'package:weather_app/utils/services/api_service.dart';

import '../../../../utils/errors/failure.dart';

class WeatherRepo {
  final ApiService apiService;
  WeatherRepo(this.apiService);
  Future<Either<Failure, WeatherEntity>> fetchSearchedMovies() async {
    try {
      WeatherModel weatherModel = await apiService.getWeather();

      WeatherEntity weatherEntity = weatherModel.toEntity();
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
