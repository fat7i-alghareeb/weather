import 'package:flutter/material.dart';
import 'package:weather_app/features/home/domain/entities/weather_entity.dart';
import 'package:weather_app/shared/widgets/gradient_background.dart';

import '../widgets/details_body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.weatherEntity});
  final WeatherEntity weatherEntity;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const GradientBackground(),
          DetailsBody(
            weatherEntity: weatherEntity,
          )
        ],
      ),
    );
  }
}
