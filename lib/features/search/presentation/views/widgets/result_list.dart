import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomResultListView extends StatelessWidget {
  const CustomResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 10,
      shrinkWrap: true,
      physics: const ScrollPhysics(parent: NeverScrollableScrollPhysics()),
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
                  height: size.height / 6,
                  child: const BookCard(
                    aspectRatio: 2.7 / 4,
                    sourceImage: AssetsData.testImage,
                  ),
                ),
                const SizedBox(
                  width: 29.7,
                ),
                Column(
                  children: [
                    SizedBox(
                      width: size.width / 2,
                      child: const Text(
                        "The Jungle Book",
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
                      child: const Text(
                        "Justin Marks, Rudyard Kipling",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: Styles.titleAuthor,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
