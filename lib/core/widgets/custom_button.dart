import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backgroundColor,
      required this.text,
      this.borderRadius,
      this.textStyle});

  final Color backgroundColor;

  final String text;
  final BorderRadius? borderRadius;
  final TextStyle? textStyle;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
        ),
        child: Text(
          text,
          style: textStyle ??
              Styles.titlePrice.copyWith(
                fontSize: 25,
                color: Colors.black87,
                fontWeight: FontWeight.w900,
              ),
        ),
      ),
    );
  }
}
