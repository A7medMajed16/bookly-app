import 'package:bookly_app/features/home/presentation/views/widgets/book_card.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_sell_info.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key, required this.size});
  final Size size;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 1.5,
      child: ListView.builder(
        itemCount: 10,
        physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height / 6,
                  child: const BookCard(
                    aspectRatio: 2.7 / 4,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                BookSellInfo(size: size),
              ],
            ),
          );
        },
      ),
    );
  }
}
