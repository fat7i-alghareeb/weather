class WeatherEntity {
  final String locationName;
  final String weatherState;
  final String sunrise;
  final String sunset;
  final int uvIndex;
  final int currentTemp;
  final int maxTemp;
  final int minTemp;

  WeatherEntity(
      {required this.locationName,
      required this.weatherState,
      required this.sunrise,
      required this.sunset,
      required this.uvIndex,
      required this.currentTemp,
      required this.maxTemp,
      required this.minTemp});
}
