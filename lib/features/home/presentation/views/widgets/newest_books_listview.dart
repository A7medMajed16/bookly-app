import 'dart:math';

import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/widgets/custom_error_message.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';

import 'package:bookly_app/core/widgets/book_card.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_sell_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class NewestBooksListView extends StatelessWidget {
  NewestBooksListView({super.key, required this.size});
  final Size size;
  final List<int> prices = [
    120,
    150,
    123,
    178,
    265,
    258,
    214,
    985,
    1025,
    600,
    539
  ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            itemCount: state.books.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: GestureDetector(
                  onTap: () =>
                      GoRouter.of(context).push(AppRouter.kBookDetailsView),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: size.height / 5,
                        child: BookCard(
                          aspectRatio: 2.7 / 4,
                          imageUrl: state
                              .books[index].volumeInfo.imageLinks.thumbnail,
                        ),
                      ),
                      const SizedBox(
                        width: 29.7,
                      ),
                      BookSellInfo(
                        size: size,
                        bookName: state.books[index].volumeInfo.title,
                        bookPrice: prices[Random().nextInt(prices.length)],
                        bookRate:
                            state.books[index].volumeInfo.ratingsCount ?? -1,
                        bookAuthors: state.books[index].volumeInfo.authors,
                        bookRateCounts:
                            state.books[index].volumeInfo.ratingsCount ?? -1,
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        } else if (state is NewestBooksFailure) {
          return CustomErrorMessage(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
