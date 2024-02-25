import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    //Screen Dimensions
    final Size size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            AssetsData.appLogo,
            scale: size.width / 100,
          ),
          Text(
            'BoOKLY',
            style: TextStyle(
              fontSize: size.width / 8,
              letterSpacing: size.width / 60,
              fontFamily: "Pirata",
            ),
          ),
          Text(
            'Read free books',
            style: TextStyle(
              fontSize: size.width / 25,
              fontFamily: "Inter",
            ),
          ),
        ],
      ),
    );
  }
}
