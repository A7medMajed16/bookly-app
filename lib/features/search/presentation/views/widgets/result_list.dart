import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets_data.dart';

import 'package:bookly_app/core/widgets/book_card.dart';
import 'package:bookly_app/core/widgets/book_details_loading_card.dart';
import 'package:bookly_app/core/widgets/custom_error_message.dart';
import 'package:bookly_app/features/search/presentation/manager/cubit/search_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/book_info.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/empty_search.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/no_result_found.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CustomResultListView extends StatelessWidget {
  const CustomResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (BlocProvider.of<SearchCubit>(context).searchWord != null) {
          if (state is SearchSuccess) {
            return ListView.builder(
              itemCount: state.books.length,
              shrinkWrap: true,
              physics:
                  const ScrollPhysics(parent: NeverScrollableScrollPhysics()),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: GestureDetector(
                    onTap: () => GoRouter.of(context).push(
                        AppRouter.kBookDetailsView,
                        extra: state.books[index]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: size.height / 6,
                          child: BookCard(
                            aspectRatio: 2.7 / 4,
                            imageUrl: state.books[index].volumeInfo.imageLinks
                                    ?.thumbnail ??
                                AssetsData.noCoverImageLink,
                          ),
                        ),
                        const SizedBox(
                          width: 29.7,
                        ),
                        BookInfo(
                          size: size,
                          bookModel: state.books[index],
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          } else if (state is SearchNoResult) {
            return NoResultFound(
                searchWord: BlocProvider.of<SearchCubit>(context).searchWord);
          } else if (state is SearchFailure) {
            return CustomErrorMessage(errorMessage: state.errorMessage);
          } else {
            return const LoadingShimmerList();
          }
        } else {
          return const EmptySearch();
        }
      },
    );
  }
}
