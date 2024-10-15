import 'package:flutter/material.dart';
import '../../../../shared/widgets/gradient_background.dart';
import 'widgets/on_boarding_body.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          GradientBackground(),
          OnBoardingBody(),
        ],
      ),
    );
  }
}
