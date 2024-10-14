import 'package:beamer/beamer.dart';
import 'package:weather_app/features/home/presentation/ui/views/home_screen.dart';

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
        RoutesPaths.home: (context, state, data) => const HomeScreen(),
        RoutesPaths.details: (context, state, data) {
          return const DetailsScreen();
        },
      },
    ).call,
  );
}
