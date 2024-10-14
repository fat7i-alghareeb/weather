import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/features/home/presentation/manager/cubit/weather_cubit.dart';
import 'package:weather_app/features/home/presentation/manager/cubit/weather_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<WeatherCubit>().getWeatherDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<WeatherCubit, WeatherState>(
        builder: (context, state) {
          if (state is WeatherSuccess) {
            return Center(
              child: Text(state.weatherEntity.locationName),
            );
          }

          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
