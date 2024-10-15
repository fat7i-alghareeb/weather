import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:weather_app/utils/app_text_styles.dart';
import 'package:weather_app/utils/assets.dart';
import 'package:weather_app/utils/constants.dart';
import 'package:weather_app/utils/extensions.dart';
import 'package:weather_app/utils/spacing.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const GradientBackground(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              verticalSpace(context.heightPercentage(2)),
              Image.asset(
                Assets.onBoarding,
                height: context.heightPercentage(50),
              ),
              verticalSpace(context.heightPercentage(2)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: SizedBox(
                  height: context.heightPercentage(17.2),
                  child: FittedBox(
                    fit: BoxFit.fitHeight,
                    child: Column(
                      children: [
                        Text(
                          "Weather",
                          style: Styles.w600s64,
                        ),
                        Text(
                          "ForeCasts",
                          style: Styles.w600s64.copyWith(
                            color: const Color(0XFFDDB130),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              verticalSpace(context.heightPercentage(5.7)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Container(
                  height: context.heightPercentage(7.7),
                  decoration: BoxDecoration(
                    color: const Color(0XFFDDB130),
                    borderRadius: BorderRadius.circular(
                      Constants.borderRadius,
                    ),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          "Get Start",
                          style: Styles.w600s64.copyWith(
                            color: const Color(0xFF51409e),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class GradientBackground extends StatelessWidget {
  const GradientBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          stops: [
            0.0,
            0.01,
            0.04,
            0.3,
            0.8,
            1.0,
          ],
          colors: [
            Color(0xFF8f3da7),
            Color(0xFF8b46aa),
            Color(0xFF8551ad),
            Color(0xFF51409e),
            Color(0xFF2e336c),
            Color(0xFF192241),
          ],
        ),
      ),
    );
  }
}
