import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  const BookCard({
    super.key,
    required this.aspectRatio,
  });

  final double aspectRatio;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Container(
        margin: const EdgeInsets.only(left: 20),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetsData.testImage),
          ),
        ),
      ),
    );
  }
}
