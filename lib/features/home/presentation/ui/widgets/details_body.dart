import 'package:flutter/material.dart';
import 'package:weather_app/utils/extensions.dart';

import '../../../../../utils/app_text_styles.dart';
import '../../../../../utils/spacing.dart';
import '../../../domain/entities/weather_entity.dart';
import 'air_quality.dart';
import 'forecast_list.dart';
import 'sun_widget.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({
    super.key,
    required this.weatherEntity,
  });
  final WeatherEntity weatherEntity;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(context.heightPercentage(10)),
          Center(
            child: SizedBox(
              height: 70,
              child: Column(
                children: [
                  Text(
                    weatherEntity.locationName,
                    style: Styles.w400s24,
                  ),
                  Text(
                    "Max:${weatherEntity.maxTemp}° Min:${weatherEntity.minTemp}°",
                    style: Styles.w400s24,
                  ),
                ],
              ),
            ),
          ),
          verticalSpace(50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              "7-Days Forecasts",
              style: Styles.w700s24,
            ),
          ),
          verticalSpace(15),
          ForecastList(
            weatherForecastTemp: weatherEntity.dailyTemp,
          ),
          verticalSpace(35),
          AirQualityWIdget(
            airQuality: weatherEntity.airQuality,
          ),
          verticalSpace(40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              children: [
                Expanded(
                  child: SunWidget(
                    widgetTitle: "SUNRISE",
                    middleText: weatherEntity.sunrise,
                    bottomText: "Sunset: ${weatherEntity.sunset}",
                  ),
                ),
                horizontalSpace(20),
                Expanded(
                  child: SunWidget(
                    widgetTitle: "UV INDEX",
                    middleText: weatherEntity.uvIndex.toString(),
                    bottomText: "Moderate",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
