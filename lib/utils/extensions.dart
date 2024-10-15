import 'package:flutter/material.dart';

extension MediaQueryExtension on BuildContext {
  Size get screenSize => MediaQuery.of(this).size;

  double get screenWidth => screenSize.width;
  double widthPercentage(double percent) => (screenWidth * (percent / 100));

  double get screenHeight => screenSize.height;
  double heightPercentage(double percent) => (screenHeight * (percent / 100));
}
