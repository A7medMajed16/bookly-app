import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/newest_books_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookSellInfo extends StatelessWidget {
  const BookSellInfo({
    super.key,
    required this.size,
    required this.bookPrice,
    required this.bookModel,
  });

  final Size size;
  final int bookPrice;
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    String authors;
    if (bookModel.volumeInfo.authors == null) {
      authors = 'Unknown Author';
    } else {
      authors = bookModel.volumeInfo.authors!.join(',');
    }

    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            const SizedBox(
              height: 5,
            ),
            NewestBooksPriceAndRate(
              withPrice: true,
              bookPrice: bookPrice,
              volumeInfo: bookModel.volumeInfo,
            ),
          ],
        );
      },
    );
  }
}
