import 'package:bookly_app/features/home/presentation/views/widgets/book_card.dart';
import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class FeaturedBooksListView extends StatefulWidget {
  const FeaturedBooksListView({super.key, required this.size});
  final Size size;

  @override
  State<FeaturedBooksListView> createState() => _FeaturedBooksListViewState();
}

class _FeaturedBooksListViewState extends State<FeaturedBooksListView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.size.height / 3,
      child: ScrollSnapList(
        itemBuilder: (context, index) => const BookCard(
          aspectRatio: 2.7 / 4,
        ),
        itemCount: 10,
        itemSize: widget.size.height * 2.7 / 12,
        dynamicItemSize: true,
        onItemFocus: (index) {},
      ),
    );
  }
}
