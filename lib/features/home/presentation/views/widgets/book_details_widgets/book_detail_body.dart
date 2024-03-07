import 'package:bookly_app/features/home/presentation/views/widgets/book_details_widgets/book_details_action_buttons.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_widgets/book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_widgets/book_details_book_info_section.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_widgets/book_details_you_can_also_like_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailBody extends StatelessWidget {
  const BookDetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
      child: Column(
        children: [
          const BookDetailsAppBar(),
          BookDetailsSection(width: width),
          const SizedBox(height: 20),
          // const NewestBooksPriceAndRate(
          //   withPrice: false,
          //   bookPrice: 0,
          //   volumeInfo: null,
          // ),
          const SizedBox(height: 20),
          const BookDetailsActionsButtons(),
          const SizedBox(height: 20),
          const YouCanAlsoLikeSection(),
        ],
      ),
    );
  }
}
