import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:weather_app/utils/themes.dart';

import 'utils/get_it.dart';
import 'utils/routers/app_router.dart';

void main() {
  setup();
  late bool devicePreview = false;
  runApp(devicePreview
      ? DevicePreview(builder: (context) {
          return const MyApp();
        })
      : const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Color(0xFF8f3da7),
      ),
    );

    return ScreenUtilInit(
      designSize: const Size(428, 926),
      child: MaterialApp.router(
        locale: DevicePreview.locale(context),
        builder: (context, child) => ResponsiveBreakpoints.builder(
          child: DevicePreview.appBuilder(context, child!),
          breakpoints: [
            const Breakpoint(start: 0, end: 450, name: MOBILE),
            const Breakpoint(start: 451, end: 800, name: TABLET),
            const Breakpoint(start: 801, end: 1920, name: DESKTOP),
            const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
          ],
        ),
        debugShowCheckedModeBanner: false,
        routeInformationParser: BeamerParser(),
        routerDelegate: AppRouter.mainBeamerDelegate,
        title: 'weather app',
        theme: theme,
      ),
    );
  }
}
