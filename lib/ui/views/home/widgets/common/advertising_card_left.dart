import 'package:filledstacked/ui/common/app_colors.dart';
import 'package:filledstacked/ui/common/shared_styles.dart';
import 'package:filledstacked/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AdvertisingCardLeft extends StatelessWidget {
  final String title;
  final String imagePath;
  final String description;

  const AdvertisingCardLeft(
      {super.key,
      required this.title,
      required this.imagePath,
      required this.description});

  @override
  Widget build(BuildContext context) {
    final children = [
      Container(
        width: MediaQuery.of(context).size.width * 0.2,
        height: MediaQuery.of(context).size.width * 0.2,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40.0),
            image: DecorationImage(image: AssetImage(imagePath))),
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.1,
      ),
      Expanded(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Text(
              title,
              style: ktsBodyLargeBold.copyWith(color: kcMediumGrey),
            ),
            ScreenTypeLayout.builder(
              // mobile: (_) => verticalSpaceTiny,
              desktop: (_) => verticalSpaceMedium,
            ),
            Text(
              description,
              style: ktsBodyRegular.copyWith(color: kcLightGrey),
            ),
          ])),
    ];

    return ScreenTypeLayout.builder(
      mobile: (_) => Container(
        width: MediaQuery.of(context).size.width * 0.2,
        height: MediaQuery.of(context).size.height * 0.4,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(children: children),
        ),
      ),
      desktop: (_) => Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(children: children),
      ),
    );
  }
}
