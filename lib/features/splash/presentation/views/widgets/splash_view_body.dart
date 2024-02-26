import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/sliding_image.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => Initialise();
}

class Initialise extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  //Variables
  late AnimationController splashViewAnimationController;
  late Animation<Offset> logoSlidingAnimation;
  late Animation<Offset> appNameSlidingAnimation;
  late Animation<Offset> sloganSlidingAnimation;

  //Initialise  Function
  @override
  void initState() {
    initSlidingAnimations();
    splashToHome();
    super.initState();
  }

  //Dispose Function
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
          SlidingImage(
            slidingAnimation: logoSlidingAnimation,
            scale: size.width / 100,
            imageSource: AssetsData.appLogo,
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
            text: 'all magic is here',
            fontSize: size.width / 25,
            letterSpacing: 0,
            fontFamily: 'Inter',
          ),
        ],
      ),
    );
  }

  //Initialise the animations function
  void initSlidingAnimations() {
    initSplashAnimationController();
    //Logo animation
    initLogoSlidingAnimation();
    //Logo animation
    initNameSlidingAnimation();
    //Logo animation
    initSloganSlidingAnimation();
    splashViewAnimationController.forward();
  }

  //Initialise SplashView animation controller function
  void initSplashAnimationController() {
    splashViewAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
  }

  //Initialise Logo animation function
  void initLogoSlidingAnimation() {
    logoSlidingAnimation = Tween<Offset>(
      begin: const Offset(0, -0.5),
      end: Offset.zero,
    ).animate(splashViewAnimationController);
  }

  //Initialise Name animation function
  void initNameSlidingAnimation() {
    appNameSlidingAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(splashViewAnimationController);
  }

  //Initialise Slogan animation function
  void initSloganSlidingAnimation() {
    sloganSlidingAnimation = Tween<Offset>(
      begin: const Offset(0, 4),
      end: Offset.zero,
    ).animate(splashViewAnimationController);
  }

  //navigate to home page function
  void splashToHome() {
    Future.delayed(
      const Duration(seconds: 3),
      () => Get.to(
        () => const HomeView(),
        transition: Transition.fade,
        duration: kTransitionDuration,
      ),
    );
  }
}
