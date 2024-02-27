import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/bast_seller_book_detail.dart';
import 'package:flutter/material.dart';

class BookSellInfo extends StatelessWidget {
  const BookSellInfo({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: size.width / 2,
          child: const Text(
            "The Jungle Book",
            overflow: TextOverflow.clip,
            style: Styles.titleBook,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          width: size.width / 2,
          child: const Text(
            "Justin Marks, Rudyard Kipling",
            overflow: TextOverflow.clip,
            style: Styles.titleAuthor,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const BestSellerPriceAndRate(),
      ],
    );
  }
}
