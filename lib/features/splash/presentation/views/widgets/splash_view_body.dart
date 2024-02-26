import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController splashViewAnimationController;
  late Animation<Offset> logoSlidingAnimation;
  late Animation<Offset> appNameSlidingAnimation;
  late Animation<Offset> sloganSlidingAnimation;

  @override
  void initState() {
    splashViewAnimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    //Logo animation
    logoSlidingAnimation =
        Tween<Offset>(begin: const Offset(0, -0.5), end: Offset.zero)
            .animate(splashViewAnimationController);
    //Logo animation
    appNameSlidingAnimation =
        Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero)
            .animate(splashViewAnimationController);
    //Logo animation
    sloganSlidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(splashViewAnimationController);
    splashViewAnimationController.forward();

    super.initState();
  }

  @override
  void dispose() {
    splashViewAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //Screen Dimensions
    final Size size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedBuilder(
            animation: logoSlidingAnimation,
            builder: (BuildContext context, Widget? child) => SlideTransition(
              position: logoSlidingAnimation,
              child: Image.asset(
                AssetsData.appLogo,
                scale: size.width / 100,
              ),
            ),
          ),
          SlidingText(
            slidingAnimation: appNameSlidingAnimation,
            text: 'BoOKLY',
            fontSize: size.width / 7,
            letterSpacing: size.width / 50,
            fontFamily: 'Pirata',
          ),
          SlidingText(
            slidingAnimation: sloganSlidingAnimation,
            text: 'All magic is here',
            fontSize: size.width / 25,
            letterSpacing: 0,
            fontFamily: 'Inter',
          ),
        ],
      ),
    );
  }
}
