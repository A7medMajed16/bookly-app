import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BookInfo extends StatelessWidget {
  const BookInfo({
    super.key,
    required this.size,
    required this.bookModel,
  });

  final Size size;
  final BookModel bookModel;

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
        SizedBox(
          width: size.width / 2,
          child: Text(
            bookModel.volumeInfo.title!,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: Styles.titleBook,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          width: size.width / 2,
          child: Text(
            authors,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: Styles.titleAuthor,
          ),
        ),
      ],
    );
  }
}
