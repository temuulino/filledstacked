import 'package:filledstacked/ui/common/app_colors.dart';
import 'package:filledstacked/ui/common/shared_styles.dart';
import 'package:filledstacked/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';

class AdvertisingCardRight extends StatelessWidget {
  final String title;
  final String imagePath;
  final String description;

  const AdvertisingCardRight(
      {super.key,
      required this.title,
      required this.imagePath,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: ktsBodyLargeBold.copyWith(color: kcMediumGrey),
                ),
                verticalSpaceMedium,
                Text(
                  description,
                  style: ktsBodyRegular.copyWith(color: kcLightGrey),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 200,
          ),
          Container(
            width: 280,
            height: 280,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                image: DecorationImage(image: AssetImage(imagePath))),
          ),
        ],
      ),
    );
  }
}
