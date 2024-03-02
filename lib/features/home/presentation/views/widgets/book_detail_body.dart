import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_card.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailBody extends StatelessWidget {
  const BookDetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          const BookDetailsAppBar(),
          const SizedBox(height: 27),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.15),
            child: const BookCard(
              aspectRatio: 2.7 / 4,
              sourceImage: AssetsData.testImage,
            ),
          ),
        ],
      ),
    );
  }
}
