import 'package:bookly_app/core/utils/app_router.dart';

import 'package:bookly_app/core/widgets/book_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class YouCanAlsoLikeListView extends StatelessWidget {
  const YouCanAlsoLikeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.22,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
          itemCount: 15,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: GestureDetector(
                onTap: () =>
                    GoRouter.of(context).push(AppRouter.kBookDetailsView),
                child: const BookCard(
                  aspectRatio: 2.7 / 4,
                  imageUrl:
                      'https://th.bing.com/th/id/OIP.7TCIbjpgeB9zecWAIaMmjQHaK-?rs=1&pid=ImgDetMain',
                ),
              ),
            );
          }),
    );
  }
}
