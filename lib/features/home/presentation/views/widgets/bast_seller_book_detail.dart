import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerPriceAndRate extends StatelessWidget {
  const BestSellerPriceAndRate({
    super.key,
    required this.withPrice,
  });

  final bool withPrice;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        withPrice
            ? Container(
                margin: const EdgeInsets.only(right: 37),
                child: const SizedBox(
                  child: Text(
                    "199.9 \$",
                    overflow: TextOverflow.clip,
                    style: Styles.titlePrice,
                  ),
                ),
              )
            : const SizedBox(),
        const Text(
          "⭐️ 4.8/5",
          overflow: TextOverflow.clip,
          style: Styles.titleRate,
        ),
        const Text(
          "  (16820)",
          overflow: TextOverflow.clip,
          style: Styles.titleRaters,
        )
      ],
    );
  }
}
