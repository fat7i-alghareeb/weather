import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather_app/features/home/data/models/open-meteo/temperature_forecast_daily_model.dart';
import 'package:weather_app/features/home/data/models/open-meteo/temperature_forecast_hourly_model.dart';
part 'temperature_forecast_api_service.g.dart';

@RestApi(baseUrl: "https://api.open-meteo.com/v1/")
abstract class TemperatureForecastApiService {
  factory TemperatureForecastApiService(Dio dio, {String baseUrl}) =
      _TemperatureForecastApiService;

  @GET("/forecast")
  Future<TemperatureForecastDailyModel> getTemperatureForecastDaily({
    @Query("latitude") double latitude = 36.20124,
    @Query("longitude") double longitude = 37.16117,
    @Query("daily") String daily = "temperature_2m_max",
    @Query("forecast_days") int forecastDays = 7,
  });
  @GET("/forecast")
  Future<TemperatureForecastHourlyModel> getTemperatureForecastHourly({
    @Query("latitude") double latitude = 36.20124,
    @Query("longitude") double longitude = 37.16117,
    @Query("hourly") String daily = "temperature_2m",
    @Query("forecast_days") int forecastDays = 1,
  });
}
