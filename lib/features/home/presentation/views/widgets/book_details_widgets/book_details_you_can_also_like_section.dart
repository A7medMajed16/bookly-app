import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_widgets/you_can_also_like_list.dart';
import 'package:flutter/material.dart';

class YouCanAlsoLikeSection extends StatelessWidget {
  const YouCanAlsoLikeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "You can also like:",
            style: Styles.titleMedium.copyWith(fontWeight: FontWeight.normal),
          ),
        ),
        const YouCanAlsoLikeListView(),
      ],
    );
  }
}
