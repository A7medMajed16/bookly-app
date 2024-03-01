import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_card.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_sell_info.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key, required this.size});
  final Size size;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: GestureDetector(
            onTap: () => GoRouter.of(context).push(AppRouter.kBookDetailsView),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height / 5,
                  child: const BookCard(
                    aspectRatio: 2.7 / 4,
                  ),
                ),
                const SizedBox(
                  width: 29.7,
                ),
                BookSellInfo(size: size),
              ],
            ),
          ),
        );
      },
    );
  }
}
