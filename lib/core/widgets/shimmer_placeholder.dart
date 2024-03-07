import 'package:flutter/material.dart';

class ShimmerPlaceHolder extends StatelessWidget {
  const ShimmerPlaceHolder({
    super.key,
    required this.width,
    required this.hight,
  });

  final double width;
  final double hight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: hight,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
