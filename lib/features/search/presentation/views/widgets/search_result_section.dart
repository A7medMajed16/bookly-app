import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/result_list.dart';
import 'package:flutter/material.dart';

class SearchResultSection extends StatelessWidget {
  const SearchResultSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.only(left: 5),
          child: Text(
            "Results:",
            style: Styles.titleMedium,
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: CustomResultListView(),
        ),
      ],
    );
  }
}
