import 'package:bookly_app/core/widgets/book_loading_card.dart';
import 'package:bookly_app/core/widgets/custom_error_message.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  const BookCard({
    super.key,
    required this.aspectRatio,
    required this.imageUrl,
  });

  final double aspectRatio;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: AspectRatio(
        aspectRatio: aspectRatio,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: imageUrl,
          placeholder: (context, url) => loadingCard(),
          errorWidget: (context, url, error) => const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.error,
                color: Colors.red,
                size: 60,
              ),
              SizedBox(
                height: 25,
              ),
              CustomErrorMessage(
                errorMessage: 'Failed to load the book image',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
