import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/app_logo_with_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppLogoWithTitle(
          logoScale: size.width / 30,
          titleSize: size.width / 15,
          titleLetterSpacing: size.width / 100,
          imageSource: AssetsData.appLogo,
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.search,
              color: kIconsColor,
              size: size.width / 12,
            ))
      ],
    );
  }
}
