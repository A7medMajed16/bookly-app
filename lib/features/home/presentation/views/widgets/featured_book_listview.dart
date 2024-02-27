import 'package:bookly_app/features/home/presentation/views/widgets/book_card.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatefulWidget {
  const FeaturedBooksListView({super.key, required this.size});
  final Size size;

  @override
  State<FeaturedBooksListView> createState() => _FeaturedBooksListViewState();
}

class _FeaturedBooksListViewState extends State<FeaturedBooksListView> {
  int selectedIndex = -1; // Initially no card is selected
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.size.height / 3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
        itemBuilder: (context, index) {
          return GestureDetector(
            child: BookCard(size: widget.size),
          );
        },
      ),
    );
  }
}
