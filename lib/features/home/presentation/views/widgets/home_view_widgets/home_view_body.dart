import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/newest_books_widgets/newest_books_listview.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_widgets/featured_book_listview.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_view_widgets/home_view_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return CustomScrollView(
      physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: size.width / 20,
                    right: size.width / 30,
                    left: size.width / 30),
                child: const HomeViewAppBar(),
              ),
              SizedBox(height: size.height / 50),
              FeaturedBooksListView(size: size),
              SizedBox(
                height: size.height / 60,
              ),
              SizedBox(height: size.height / 20),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Newest:",
                  style: Styles.titleMedium,
                ),
              ),
              SizedBox(height: size.height / 50),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: NewestBooksListView(size: size),
          ),
        )
      ],
    );
  }
}
