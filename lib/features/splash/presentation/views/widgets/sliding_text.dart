import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimation,
    required this.text,
    required this.fontSize,
    required this.letterSpacing, required this.fontFamily,
  });

  final Animation<Offset> slidingAnimation;

  final String text;
  final String fontFamily;
  final double fontSize;
  final double letterSpacing;
  

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (BuildContext context, Widget? child) => SlideTransition(
        position: slidingAnimation,
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            letterSpacing: letterSpacing,
            fontFamily: fontFamily,
          ),
        ),
      ),
    );
  }
}
