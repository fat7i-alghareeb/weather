import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'utils/get_it.dart';
import 'utils/routers/app_router.dart';

void main() {
  setup();
  late bool devicePreview = true;
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
    return MaterialApp.router(
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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
