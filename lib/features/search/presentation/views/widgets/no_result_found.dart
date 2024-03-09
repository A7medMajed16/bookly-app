import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class NoResultFound extends StatelessWidget {
  const NoResultFound({
    super.key,
    required this.searchWord,
  });

  final String? searchWord;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.priority_high_rounded,
            color: Colors.grey,
            size: 60,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'No results found for',
            textAlign: TextAlign.center,
            overflow: TextOverflow.visible,
            style: Styles.titleAuthor.copyWith(fontSize: 30),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            searchWord!,
            textAlign: TextAlign.center,
            overflow: TextOverflow.visible,
            style: Styles.titleAuthor.copyWith(
                fontSize: 30, color: Colors.yellow[800]!.withOpacity(0.7)),
          ),
        ],
      ),
    );
  }
}
