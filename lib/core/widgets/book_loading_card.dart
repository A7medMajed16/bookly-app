import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Shimmer loadingCard() {
  double width = 150, hight = 150;
  return Shimmer.fromColors(
    baseColor: Colors.white54,
    highlightColor: Colors.white24,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: width,
        height: hight,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
  );
}
