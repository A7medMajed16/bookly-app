import 'package:bookly_app/features/home/presentation/views/widgets/book_card.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailBody extends StatelessWidget {
  const BookDetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        BookDetailsAppBar(),
        SizedBox(height: 27),
        BookCard(aspectRatio: 2.7 / 4)
      ],
    );
  }
}
