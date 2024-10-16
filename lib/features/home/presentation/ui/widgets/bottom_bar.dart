import 'package:flutter/material.dart';
import 'package:weather_app/utils/extensions.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.heightPercentage(3.66),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 34,
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: Icon(
                  Icons.location_on_outlined,
                ),
              ),
            ),
            SizedBox(
              height: 34,
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: Icon(
                  Icons.add_circle_outline_sharp,
                ),
              ),
            ),
            SizedBox(
              height: 34,
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: Icon(
                  Icons.menu,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
