import 'package:bookly_app/features/home/presentation/views/widgets/book_details_widgets/book_detail_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(10),
          child: BookDetailBody(),
        ),
      ),
    );
  }
}
