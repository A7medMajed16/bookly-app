import 'package:bookly_app/features/search/presentation/views/widgets/custom_search_box.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_result_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 20, left: 20, top: 20),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            CustomSearchBox(),
            SearchResultSection(),
          ],
        ),
      ),
    );
  }
}
