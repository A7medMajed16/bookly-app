import 'package:bookly_app/core/utils/app_router.dart';

import 'package:bookly_app/core/widgets/custom_error_message.dart';

import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/core/widgets/book_card.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_list_shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class FeaturedBooksListView extends StatefulWidget {
  const FeaturedBooksListView({super.key, required this.size});
  final Size size;

  @override
  State<FeaturedBooksListView> createState() => _FeaturedBooksListViewState();
}

class _FeaturedBooksListViewState extends State<FeaturedBooksListView> {
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: widget.size.height / 3,
            child: ScrollSnapList(
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  if (index == selectedItem) {
                    GoRouter.of(context).push(AppRouter.kBookDetailsView);
                  }
                },
                child: BookCard(
                  aspectRatio: 2.7 / 4,
                  imageUrl: state
                              .books[index].volumeInfo.imageLinks?.thumbnail ==
                          null
                      ? 'https://th.bing.com/th/id/OIP.WAifvNHsavzRSECO6oG5bAAAAA?rs=1&pid=ImgDetMain'
                      : state.books[index].volumeInfo.imageLinks!.thumbnail,
                ),
              ),
              itemCount: state.books.length,
              itemSize: widget.size.height * 2.7 / 12,
              dynamicItemSize: true,
              onItemFocus: (index) {
                selectedItem = index;
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorMessage(errorMessage: state.errorMessage);
        } else {
          return const FeaturedListShimmerLoading();
        }
      },
    );
  }
}
