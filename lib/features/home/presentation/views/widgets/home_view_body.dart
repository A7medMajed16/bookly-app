import 'package:bookly_app/core/utils/styles.dart';
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeViewAppBar(size: size),
          SizedBox(
            height: size.height / 50,
          ),
          FeaturedBooksListView(size: size),
          SizedBox(
            height: size.height / 15,
          ),
          const Text(
            "Best Sellers",
            style: Styles.titleMedium,
          ),
        ],
      ),
    );
  }
}
