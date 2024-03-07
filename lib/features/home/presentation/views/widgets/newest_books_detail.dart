import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/volume_info.dart';
import 'package:flutter/material.dart';

class NewestBooksPriceAndRate extends StatelessWidget {
  const NewestBooksPriceAndRate({
    super.key,
    required this.withPrice,
    required this.bookPrice,
    required this.volumeInfo,
  });

  final bool withPrice;
  final int bookPrice;
  final VolumeInfo volumeInfo;

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
                    bookPrice == 0 ? "Free" : "$bookPrice \$",
                    overflow: TextOverflow.clip,
                    style: Styles.titlePrice,
                  ),
                ),
              )
            : const SizedBox(),
        Text(
          volumeInfo.averageRating == null
              ? "Not rate"
              : "⭐️ ${volumeInfo.averageRating}/5",
          overflow: TextOverflow.clip,
          style: Styles.titleRate,
        ),
        Text(
          volumeInfo.ratingsCount == null
              ? ''
              : '  (${volumeInfo.ratingsCount})',
          overflow: TextOverflow.clip,
          style: Styles.titleRaters,
        )
      ],
    );
  }
}
