import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/home/data/models/open-meteo/air_quality_model.dart';
part 'air_quality_api_service.g.dart';

@RestApi(baseUrl: "https://air-quality-api.open-meteo.com/v1/")
abstract class AirQualityApiService {
  factory AirQualityApiService(Dio dio, {String baseUrl}) =
      _AirQualityApiService;

  @GET("/air-quality")
  Future<AirQualityModel> getAirQuality(
      {@Query("latitude") double latitude = 36.20124,
      @Query("longitude") double longitude = 37.16117,
      @Query("hourly") String hourly = "pm2_5,uv_index_clear_sky",
      @Query("forecast_days") int forecastDays = 1});
}
