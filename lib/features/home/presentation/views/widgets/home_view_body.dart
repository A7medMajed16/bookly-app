import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_listview.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_book_listview.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_view_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(
          top: size.width / 20, right: size.width / 30, left: size.width / 30),
      child: SingleChildScrollView(
        physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeViewAppBar(),
            SizedBox(
              height: size.height / 50,
            ),
            FeaturedBooksListView(size: size),
            SizedBox(
              height: size.height / 60,
            ),
            SizedBox(
              height: size.height / 20,
            ),
            const Text(
              "Best Seller",
              style: Styles.titleMedium,
            ),
            SizedBox(
              height: size.height / 50,
            ),
            BestSellerListView(size: size),
          ],
        ),
      ),
    );
  }
}
