import 'package:flutter/material.dart';

import '../../../../../utils/assets.dart';
import '../../../../../utils/constants.dart';
import 'forecast_card.dart';

class ForecastList extends StatefulWidget {
  const ForecastList({super.key});

  @override
  State<ForecastList> createState() => _ForecastListState();
}

class _ForecastListState extends State<ForecastList> {
  final ScrollController _scrollController = ScrollController();

  void _scrollLeft() {
    _scrollController.animateTo(
      _scrollController.offset - 100,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void _scrollRight() {
    _scrollController.animateTo(
      _scrollController.offset + 100,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: ListView.builder(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              itemCount: 7,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: ForecastCard(day: Constants.days[index], temp: '18°C'),
                );
              },
            ),
          ),
          Positioned(
            left: 10,
            top: 0,
            bottom: 0,
            child: GestureDetector(
              onTap: _scrollLeft,
              child: Image.asset(
                Assets.arrowLeft,
                height: 24,
                width: 12,
              ),
            ),
          ),
          Positioned(
            right: 10,
            top: 0,
            bottom: 0,
            child: GestureDetector(
              onTap: _scrollRight,
              child: Image.asset(
                Assets.arrowRight,
                height: 24,
                width: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
