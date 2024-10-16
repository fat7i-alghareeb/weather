import 'package:flutter/material.dart';

SizedBox verticalSpace(double height) => SizedBox(
      height: height,
    );

SizedBox horizontalSpace(double width) => SizedBox(
      width: width,
    );

SliverToBoxAdapter sliverVerticalSpace(double height) => SliverToBoxAdapter(
      child: verticalSpace(height),
    );
