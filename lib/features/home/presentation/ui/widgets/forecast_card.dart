import 'package:flutter/material.dart';

import '../../../../../utils/app_text_styles.dart';
import '../../../../../utils/assets.dart';

class ForecastCard extends StatelessWidget {
  final String day;
  final String temp;

  const ForecastCard({
    super.key,
    required this.day,
    required this.temp,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 82,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        image: const DecorationImage(
          image: AssetImage(Assets.forecast),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(temp, style: Styles.w500s20),
          Image.asset(
            Assets.morning,
            height: 66,
            width: 66,
          ),
          Text(day, style: Styles.w500s20),
        ],
      ),
    );
  }
}
