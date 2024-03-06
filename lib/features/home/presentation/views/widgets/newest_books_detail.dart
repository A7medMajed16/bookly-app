import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class NewestBooksPriceAndRate extends StatelessWidget {
  const NewestBooksPriceAndRate({
    super.key,
    required this.withPrice,
    required this.bookPrice,
    required this.bookRate,
    required this.bookRateCounts,
  });

  final bool withPrice;
  final int bookPrice;
  final int bookRate;
  final int bookRateCounts;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        withPrice
            ? Container(
                margin: const EdgeInsets.only(right: 37),
                child: SizedBox(
                  child: Text(
                    "$bookPrice \$",
                    overflow: TextOverflow.clip,
                    style: Styles.titlePrice,
                  ),
                ),
              )
            : const SizedBox(),
        Text(
          bookRate == -1 ? "Not rate" : "⭐️ $bookRate/5",
          overflow: TextOverflow.clip,
          style: Styles.titleRate,
        ),
        Text(
          bookRateCounts == -1 ? '' : '(  $bookRateCounts)',
          overflow: TextOverflow.clip,
          style: Styles.titleRaters,
        )
      ],
    );
  }
}
