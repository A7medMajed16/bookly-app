import 'package:bookly_app/core/widgets/book_details_loading_card_placeholder.dart';
import 'package:flutter/material.dart';

class LoadingShimmerList extends StatelessWidget {
  const LoadingShimmerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        loadingListPlaceHolder(),
        const SizedBox(height: 20),
        loadingListPlaceHolder(),
        const SizedBox(height: 20),
        loadingListPlaceHolder(),
        const SizedBox(height: 20),
        loadingListPlaceHolder(),
      ],
    );
  }
}
