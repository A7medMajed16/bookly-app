import 'package:bookly_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearchBox extends StatelessWidget {
  const CustomSearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
        color: Colors.black87,
        fontSize: 18,
      ),
      decoration: InputDecoration(
          hintText: 'Search...',
          hintStyle: const TextStyle(color: Colors.black54),
          fillColor: Colors.white,
          filled: true,
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.search,
              color: Colors.black54,
              size: 35,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: kPrimaryColor,
            ),
          )),
    );
  }
}
