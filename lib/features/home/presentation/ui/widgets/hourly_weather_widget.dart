import 'package:flutter/material.dart';
import 'package:weather_app/utils/extensions.dart';

import '../../../../../utils/app_text_styles.dart';
import '../../../../../utils/assets.dart';
import '../../../../../utils/spacing.dart';

class HourlyWeatherWidget extends StatelessWidget {
  const HourlyWeatherWidget({
    super.key,
    required this.weather,
  });
  final int weather;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.heightPercentage(28),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: const DecorationImage(
          image: AssetImage(Assets.container),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          verticalSpace(30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 46),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Today",
                  style: Styles.w600s20,
                ),
                Text(
                  "July, 21",
                  style: Styles.w600s20,
                )
              ],
            ),
          ),
          verticalSpace(20),
          const Divider(
            color: Color(0XFF8e78c8),
            thickness: 2,
          ),
          verticalSpace(context.heightPercentage(1.6)),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(left: 24),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => FittedBox(
                child: Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Column(
                    children: [
                      Text(
                        " $weather°",
                        style: Styles.w600s18,
                      ),
                      Image.asset(
                        Assets.morning,
                        height: 66,
                        width: 66,
                      ),
                      Text(
                        " 15.00",
                        style: Styles.w600s18,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          verticalSpace(context.heightPercentage(3)),
        ],
      ),
    );
  }
}
