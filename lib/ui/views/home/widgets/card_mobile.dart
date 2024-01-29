import 'package:filledstacked/ui/common/app_colors.dart';
import 'package:filledstacked/ui/common/shared_styles.dart';
import 'package:filledstacked/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeCardMobile extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  HomeCardMobile({
    Key? key,
    required this.title,
    required this.description,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          fit: BoxFit.cover,
          height: 220,
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Container(
            width: 340,
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: ktsBodyLarge.copyWith(color: kcPrimaryColor),
                  ),
                  verticalSpaceSmall,
                  Text(
                    description,
                    style: ktsBodyRegular.copyWith(color: kcDarkGreyColor),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
