import 'package:flutter/cupertino.dart';

class SlidingImage extends StatelessWidget {
  const SlidingImage({
    super.key,
    required this.slidingAnimation,
    required this.scale,
    required this.imageSource,
  });

  final Animation<Offset> slidingAnimation;
  final double scale;
  final String imageSource;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (BuildContext context, Widget? child) => SlideTransition(
        position: slidingAnimation,
        child: Image.asset(
          imageSource,
          scale: scale,
        ),
      ),
    );
  }
}
