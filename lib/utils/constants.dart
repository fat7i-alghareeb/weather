import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Constants {
  static const apiKey = "ff8aac2c1d088bd9e96d464e4c6c1268";
  static ResponsiveValue<double> responsiveValue(BuildContext context) =>
      ResponsiveValue<double>(context, conditionalValues: [
        const Condition.between(start: 0, end: 450, value: 375),
        const Condition.between(start: 450, end: 800, value: 375),
        const Condition.between(start: 800, end: 1100, value: 375),
        const Condition.between(start: 1100, end: 1400, value: 375),
        const Condition.between(start: 1400, end: 9999, value: 375),
      ]);
}
