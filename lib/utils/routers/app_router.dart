import 'package:beamer/beamer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/features/home/data/repo/weather_repo.dart';
import 'package:weather_app/features/home/presentation/manager/cubit/weather_cubit.dart';
import 'package:weather_app/features/home/presentation/ui/views/home_screen.dart';
import 'package:weather_app/utils/get_it.dart';

import '../../features/home/presentation/ui/views/details_screen.dart';
import '../../features/on_boarding/presentation/ui/on_boarding_screen.dart';
import 'routers_paths.dart';

bool isFirstTime = true;

class AppRouter {
  static final mainBeamerDelegate = BeamerDelegate(
    initialPath: isFirstTime ? RoutesPaths.onBoardingScreen : RoutesPaths.home,
    locationBuilder: RoutesLocationBuilder(
      routes: {
        RoutesPaths.onBoardingScreen: (context, state, data) =>
            const OnBoardingScreen(),
        RoutesPaths.home: (context, state, data) => BlocProvider(
              create: (context) => WeatherCubit(getIt.get<WeatherRepo>()),
              child: const HomeScreen(),
            ),
        RoutesPaths.details: (context, state, data) {
          return const DetailsScreen();
        },
      },
    ).call,
  );
}
