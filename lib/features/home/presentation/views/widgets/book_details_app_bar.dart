import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDetailsAppBar extends StatelessWidget {
  const BookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () => GoRouter.of(context).pop(),
          icon: const Icon(
            Icons.close_rounded,
            color: Colors.white,
            size: 50,
          ),
        ),
        IconButton(
          onPressed: () => GoRouter.of(context).pop(),
          icon: const Icon(
            Icons.shopping_cart_outlined,
            color: Colors.white,
            size: 40,
          ),
        ),
      ],
    );
  }
}
