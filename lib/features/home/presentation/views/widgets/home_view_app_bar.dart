import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/app_logo_with_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const AppLogoWithTitle(
          imageSource: AssetsData.appLogo,
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.search,
              color: kIconsColor,
              size: 40,
            ))
      ],
    );
  }
}