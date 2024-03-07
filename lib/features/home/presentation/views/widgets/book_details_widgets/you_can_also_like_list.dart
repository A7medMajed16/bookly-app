import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets_data.dart';

import 'package:bookly_app/core/widgets/book_card.dart';
import 'package:bookly_app/core/widgets/custom_error_message.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_widgets/featured_list_shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class YouCanAlsoLikeListView extends StatelessWidget {
  const YouCanAlsoLikeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.22,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: GestureDetector(
                      onTap: () => GoRouter.of(context).push(
                          AppRouter.kBookDetailsView,
                          extra: state.books[index]),
                      child: BookCard(
                        aspectRatio: 2.7 / 4,
                        imageUrl: state.books[index].volumeInfo.imageLinks
                                ?.smallThumbnail ??
                            AssetsData.noCoverImageLink,
                      ),
                    ),
                  );
                }),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorMessage(errorMessage: state.errorMessage);
        } else {
          return const FeaturedListShimmerLoading();
        }
      },
    );
  }
}
