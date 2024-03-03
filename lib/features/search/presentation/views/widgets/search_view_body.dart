import 'package:bookly_app/features/search/presentation/views/widgets/custom_search_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(25),
      child: Column(
        children: [CustomSearchBox()],
      ),
    );
  }
}
