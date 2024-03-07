import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/book_card.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({
    super.key,
    required this.width,
    required this.bookModel,
  });
  final BookModel bookModel;
  final double width;

  @override
  Widget build(BuildContext context) {
    String authors;
    if (bookModel.volumeInfo.authors == null) {
      authors = 'Unknown Author';
    } else {
      authors = bookModel.volumeInfo.authors!.join(',');
    }
    return Column(
      children: [
        const SizedBox(height: 27),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.19),
          child: BookCard(
            aspectRatio: 2.7 / 4,
            imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ??
                AssetsData.noCoverImageLink,
          ),
        ),
        const SizedBox(height: 32),
        Text(
          bookModel.volumeInfo.title ?? "No title available",
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: Styles.titleBook
              .copyWith(fontSize: 40, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 6),
        Text(
          authors,
          textAlign: TextAlign.center,
          style: Styles.titleAuthor
              .copyWith(fontSize: 18, fontStyle: FontStyle.italic),
        ),
      ],
    );
  }
}
