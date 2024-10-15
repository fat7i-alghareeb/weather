import 'package:beamer/beamer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/utils/extensions.dart';
import 'package:weather_app/utils/routers/routers_paths.dart';

import '../../../../../utils/app_text_styles.dart';
import '../../../../../utils/assets.dart';
import '../../../../../utils/spacing.dart';
import '../../manager/cubit/weather_cubit.dart';
import '../../manager/cubit/weather_state.dart';
import 'hourly_weather_widget.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) {
        if (state is WeatherSuccess) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              verticalSpace(context.heightPercentage(1.2)),
              Image.asset(
                Assets.morning,
                alignment: Alignment.center,
                height: context.heightPercentage(25.2),
                width: context.widthPercentage(74.3),
              ),
              SizedBox(
                height: context.heightPercentage(16),
                child: FittedBox(
                  child: Column(
                    children: [
                      Text(
                        " ${state.weatherEntity.currentTemp}°",
                        style: Styles.w500s64,
                      ),
                      verticalSpace(context.heightPercentage(0.6)),
                      Text(
                        state.weatherEntity.weatherState,
                        style: Styles.w400s24,
                      ),
                      Text(
                        "Max:${state.weatherEntity.maxTemp}° Min:${state.weatherEntity.minTemp}°",
                        style: Styles.w400s24,
                      ),
                    ],
                  ),
                ),
              ),
              verticalSpace(context.heightPercentage(3.31)),
              GestureDetector(
                onTap: () => context.beamToNamed(RoutesPaths.details,
                    data: state.weatherEntity),
                child: Image.asset(
                  Assets.house,
                  height: context.heightPercentage(20.5),
                  alignment: Alignment.center,
                ),
              ),
              HourlyWeatherWidget(
                weather: state.weatherEntity.currentTemp,
              ),
              verticalSpace(context.heightPercentage(1.07)),
              SizedBox(
                height: context.heightPercentage(3.66),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 34,
                        child: FittedBox(
                          fit: BoxFit.fitHeight,
                          child: Icon(
                            Icons.location_on_outlined,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 34,
                        child: FittedBox(
                          fit: BoxFit.fitHeight,
                          child: Icon(
                            Icons.add_circle_outline_sharp,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 34,
                        child: FittedBox(
                          fit: BoxFit.fitHeight,
                          child: Icon(
                            Icons.menu,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        }

        return const Center(
          child: CircularProgressIndicator(
            color: Color(0xFF8f3da7),
          ),
        );
      },
    );
  }
}
