import 'package:flutter/material.dart';

const primaryColor = Color(0xFF1d2648);
///////////////////////////////////////////////////////////////////
const secondary = Color(0x9D973aaa);

///////////////////////////////////////////////////////////////////
ThemeData theme = ThemeData(
  brightness: Brightness.dark,
  fontFamily: "Poppins",
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: primaryColor,
    primary: primaryColor,
    secondary: secondary,
  ),
  useMaterial3: true,
);
///////////////////////////////////////////////////////////////

