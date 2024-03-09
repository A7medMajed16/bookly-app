import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class EmptySearch extends StatelessWidget {
  const EmptySearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.search_rounded,
            color: Colors.grey,
            size: 60,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Try type something',
            overflow: TextOverflow.visible,
            style: Styles.titleAuthor.copyWith(fontSize: 30),
          ),
        ],
      ),
    );
  }
}
