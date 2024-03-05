import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_card.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 27),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.19),
          child: const BookCard(
            aspectRatio: 2.7 / 4,
            imageUrl:
                'https://th.bing.com/th/id/OIP.7TCIbjpgeB9zecWAIaMmjQHaK-?rs=1&pid=ImgDetMain',
          ),
        ),
        const SizedBox(height: 32),
        Text(
          "The Jungle Book",
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: Styles.titleBook
              .copyWith(fontSize: 40, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 6),
        Text(
          "Justin Marks, Rudyard Kipling",
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: Styles.titleAuthor
              .copyWith(fontSize: 18, fontStyle: FontStyle.italic),
        ),
      ],
    );
  }
}
