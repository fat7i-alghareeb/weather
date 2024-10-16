import '../../features/home/data/models/open-meteo/air_quality_model.dart';
import '../../features/home/data/models/open-meteo/temperature_forecast_daily_model.dart';
import '../../features/home/data/models/open-meteo/temperature_forecast_hourly_model.dart';
import '../../features/home/data/models/weatherstack/weather_model.dart';
import '../../features/home/domain/entities/weather_entity.dart';
import 'dart:math';

WeatherEntity toEntity({
  required WeatherModel weatherModel,
  required TemperatureForecastHourlyModel temperatureForecastHourlyModel,
  required TemperatureForecastDailyModel temperatureForecastDailyModel,
  required AirQualityModel airQualityModel,
}) {
  String sunrise = weatherModel.forecast.isNotEmpty
      ? weatherModel.forecast.values.first.astro.sunrise
      : 'N/A';
  String sunset = weatherModel.forecast.isNotEmpty
      ? weatherModel.forecast.values.first.astro.sunset
      : 'N/A';
  int maxTemp = weatherModel.forecast.isNotEmpty
      ? weatherModel.forecast.values.first.maxtemp
      : 0;
  int minTemp = weatherModel.forecast.isNotEmpty
      ? weatherModel.forecast.values.first.mintemp
      : 0;

  return WeatherEntity(
    airQuality: airQualityModel.hourly.airQualities.reduce(max).toInt(),
    locationName: weatherModel.location.name,
    weatherState: weatherModel.current.weatherDescriptions.first,
    sunrise: sunrise,
    sunset: sunset,
    uvIndex: weatherModel.current.uvIndex,
    currentTemp: weatherModel.current.temperature,
    maxTemp: maxTemp,
    minTemp: minTemp,
    hourlyTemp: temperatureForecastHourlyModel.hourly.temperatures
        .map((e) => e.toInt())
        .toList(),
    dailyTemp: temperatureForecastDailyModel.daily.temperatures
        .map((e) => e.toInt())
        .toList(),
  );
}
