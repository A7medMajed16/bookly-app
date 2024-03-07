import 'package:bookly_app/core/widgets/book_loading_card.dart';
import 'package:flutter/material.dart';

class FeaturedListShimmerLoading extends StatelessWidget {
  const FeaturedListShimmerLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height / 3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => loadingCard(),
      ),
    );
  }
}
