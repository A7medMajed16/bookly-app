import 'package:bookly_app/core/widgets/shimmer_placeholder.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Shimmer loadingListPlaceHolder() {
  double width = 80, hight = 150;
  return Shimmer.fromColors(
    baseColor: Colors.white54,
    highlightColor: Colors.white24,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ShimmerPlaceHolder(width: width, hight: hight),
          const SizedBox(width: 10),
          const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShimmerPlaceHolder(hight: 20, width: 200),
              SizedBox(height: 10),
              ShimmerPlaceHolder(hight: 20, width: 130),
              SizedBox(height: 10),
              ShimmerPlaceHolder(hight: 20, width: 150),
            ],
          )
        ],
      ),
    ),
  );
}
