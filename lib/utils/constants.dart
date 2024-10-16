import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Constants {
  static const apiKey = "ff8aac2c1d088bd9e96d464e4c6c1268";
  static final double borderRadius = 50.0.r;
  static ResponsiveValue<double> responsiveValue(BuildContext context) =>
      ResponsiveValue<double>(context, conditionalValues: [
        const Condition.between(start: 0, end: 400, value: 430),
        const Condition.between(start: 400, end: 450, value: 470),
        const Condition.between(start: 450, end: 1000, value: 500),
        const Condition.between(start: 1000, end: 1400, value: 500),
        const Condition.between(start: 1400, end: 9999, value: 900),
      ]);
  static final DateTime today = DateTime.now();
}
