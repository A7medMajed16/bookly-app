import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class AppLogoWithTitle extends StatelessWidget {
  const AppLogoWithTitle({
    super.key,
    required this.imageSource,
  });

  final String imageSource;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imageSource,
          scale: 13,
        ),
        const Text(
          "BoOKLY",
          style: Styles.titleApp,
        ),
      ],
    );
  }
}
