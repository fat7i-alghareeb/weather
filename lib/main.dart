import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

import 'utils/routers/app_router.dart';

void main() {
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
      builder: DevicePreview.appBuilder,
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
