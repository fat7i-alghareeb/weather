import 'package:flutter/material.dart';

import '../../../../../utils/app_text_styles.dart';
import '../../../../../utils/assets.dart';
import '../../../../../utils/spacing.dart';

class SunWidget extends StatelessWidget {
  const SunWidget({
    super.key,
    required this.widgetTitle,
    required this.middleText,
    required this.bottomText,
  });
  final String widgetTitle;
  final String middleText;
  final String bottomText;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xfff7cbfd),
        ),
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          stops: [
            0.0,
            0.3,
            0.5,
            0.6,
            0.8,
            1.0,
          ],
          colors: [
            Color(0xFF7f52ac),
            Color(0xFF7f52ac),
            Color(0xFF7048a6),
            Color(0xFF6643a1),
            Color(0xFF593b9b),
            Color(0xFF3e2d8f),
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                Assets.sun,
                height: 36,
                width: 36,
              ),
              horizontalSpace(5),
              Text(
                widgetTitle,
                style: Styles.w400s16,
              )
            ],
          ),
          verticalSpace(8),
          Flexible(
            child: Text(
              middleText,
              maxLines: 1,
              style: Styles.w600s28,
            ),
          ),
          verticalSpace(15),
          Flexible(
            child: Text(
              bottomText,
              maxLines: 1,
              style: Styles.w600s20.copyWith(
                color: const Color(0xFFbea8d3),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
