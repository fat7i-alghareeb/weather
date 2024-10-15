import 'package:flutter/widgets.dart';

class GradientBackground extends StatelessWidget {
  const GradientBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          stops: [
            0.0,
            0.01,
            0.04,
            0.3,
            0.8,
            1.0,
          ],
          colors: [
            Color(0xFF8f3da7),
            Color(0xFF8b46aa),
            Color(0xFF8551ad),
            Color(0xFF51409e),
            Color(0xFF2e336c),
            Color(0xFF192241),
          ],
        ),
      ),
    );
  }
}
