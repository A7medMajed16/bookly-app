import 'package:bookly_app/features/home/presentation/views/widgets/book_card.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key, required this.size});
  final Size size;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
        itemBuilder: (context, index) {
          return BookCard(size: size);
        },
      ),
    );
  }
}
