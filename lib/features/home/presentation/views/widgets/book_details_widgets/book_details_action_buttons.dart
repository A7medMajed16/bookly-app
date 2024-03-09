import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookDetailsActionsButtons extends StatefulWidget {
  const BookDetailsActionsButtons({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  State<BookDetailsActionsButtons> createState() =>
      _BookDetailsActionsButtonsState();
}

class _BookDetailsActionsButtonsState extends State<BookDetailsActionsButtons> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
                backgroundColor: Colors.white,
                text: '199.9\$',
                borderRadius: widget.bookModel.volumeInfo.previewLink != null
                    ? const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        bottomLeft: Radius.circular(16),
                      )
                    : const BorderRadius.all(Radius.circular(16))),
          ),
          widget.bookModel.volumeInfo.previewLink != null
              ? Expanded(
                  child: CustomButton(
                    onPressed: () async {
                      setState(() {
                        isLoading = true;
                      });
                      Uri uri =
                          Uri.parse(widget.bookModel.volumeInfo.previewLink!);
                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri);
                      } else {
                        // ignore: use_build_context_synchronously
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Can\'t launch the url',
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: Styles.titlePrice
                                  .copyWith(color: Colors.red, fontSize: 15),
                            ),
                          ),
                        );
                      }
                      setState(() {
                        isLoading = false;
                      });
                    },
                    backgroundColor: const Color(0xffEF8262),
                    text: isLoading == true ? 'Loading...' : 'Free preview',
                    textStyle: Styles.titleMedium.copyWith(
                      color: Colors.white,
                      fontSize: width * 0.05,
                    ),
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                  ),
                )
              : const SizedBox()
        ],
      ),
    );
  }
}
