import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../features/home/data/models/weatherstack/weather_model.dart';
import '../constants.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: "http://api.weatherstack.com/")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  @GET("/forecast")
  Future<WeatherModel> getWeather(
      {@Query("access_key") String apiKey = Constants.apiKey,
      @Query("hourly") int hourly = 1,
      @Query("query") String town = "Aleppo"});
}
