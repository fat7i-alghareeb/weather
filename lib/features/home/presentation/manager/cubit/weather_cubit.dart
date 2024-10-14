import 'package:bloc/bloc.dart';
import 'package:weather_app/features/home/data/repo/weather_repo.dart';
import 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final WeatherRepo weatherRepo;
  WeatherCubit(this.weatherRepo) : super(WeatherInitial());

  Future<void> getWeatherDetails() async {
    emit(WeatherLoading());

    final results = await weatherRepo.getWeatherData();

    results.fold(
      (failure) {
        emit(WeatherFailure(message: failure.message));
      },
      (weatherEntity) {
        emit(WeatherSuccess(weatherEntity: weatherEntity));
      },
    );
  }
}
