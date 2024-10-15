import 'package:flutter/material.dart';

import '../../../../../utils/app_text_styles.dart';
import '../../../../../utils/assets.dart';
import '../../../../../utils/spacing.dart';

class AirQualityWIdget extends StatelessWidget {
  const AirQualityWIdget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 185,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      margin: const EdgeInsets.symmetric(horizontal: 40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          image: AssetImage(Assets.container),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                Assets.air,
                height: 24,
                width: 24,
              ),
              horizontalSpace(12),
              Text(
                "AIR QUALITY",
                style: Styles.w400s16,
              ),
            ],
          ),
          verticalSpace(18),
          Text(
            "3-Low Health Risk",
            style: Styles.w600s28,
          ),
          verticalSpace(10),
          const Divider(
            color: Color(0Xff8258c3),
            thickness: 5,
          ),
          verticalSpace(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "See more",
                style: Styles.w600s18,
              ),
              Image.asset(
                Assets.arrowRight,
                height: 20,
                width: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
