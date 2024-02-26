import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/app_logo_with_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(
          top: size.width / 20, right: size.width / 40, left: size.width / 40),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
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
            )
          ],
        ),
      ),
    );
  }
}
