import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerPriceAndRate extends StatelessWidget {
  const BestSellerPriceAndRate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          child: Text(
            "199.9 \$",
            overflow: TextOverflow.clip,
            style: Styles.titlePrice,
          ),
        ),
        SizedBox(
          width: 37,
        ),
        Text(
          "⭐️ 4.8/5",
          overflow: TextOverflow.clip,
          style: Styles.titleRate,
        ),
        Text(
          "  (16820)",
          overflow: TextOverflow.clip,
          style: Styles.titleRaters,
        )
      ],
    );
  }
}
