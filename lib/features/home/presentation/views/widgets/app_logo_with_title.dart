import 'package:flutter/material.dart';

class AppLogoWithTitle extends StatelessWidget {
  const AppLogoWithTitle({
    super.key,
    required this.titleSize,
    required this.logoScale,
    required this.titleLetterSpacing,
    required this.imageSource,
  });

  final double logoScale;
  final double titleSize;
  final double titleLetterSpacing;
  final String imageSource;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imageSource,
          scale: logoScale,
        ),
        Text(
          "BoOKLY",
          style: TextStyle(
            fontSize: titleSize,
            letterSpacing: titleLetterSpacing,
            fontFamily: 'Pirata',
          ),
        ),
      ],
    );
  }
}
