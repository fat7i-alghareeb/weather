import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/utils/extensions.dart';
import 'package:weather_app/utils/routers/routers_paths.dart';

import '../../../../../utils/app_text_styles.dart';
import '../../../../../utils/assets.dart';
import '../../../../../utils/constants.dart';
import '../../../../../utils/spacing.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
          child: GestureDetector(
            onTap: () => context.beamToNamed(RoutesPaths.home),
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
        ),
      ],
    );
  }
}
