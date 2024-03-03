import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/bast_seller_book_detail.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_card.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_action_buttons.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/you_can_also_like_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailBody extends StatelessWidget {
  const BookDetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
      child: Column(
        children: [
          const BookDetailsAppBar(),
          const SizedBox(height: 27),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.19),
            child: const BookCard(
              aspectRatio: 2.7 / 4,
              sourceImage: AssetsData.testImage,
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
          const SizedBox(height: 20),
          const BestSellerPriceAndRate(withPrice: false),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: BookDetailsActionsButtons(),
          ),
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "You can also like:",
                style:
                    Styles.titleMedium.copyWith(fontWeight: FontWeight.normal),
              ),
            ),
          ),
          const YouCanAlsoLikeListView(),
        ],
      ),
    );
  }
}
