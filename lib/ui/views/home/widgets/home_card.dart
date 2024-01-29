import 'package:filledstacked/ui/common/app_colors.dart';
import 'package:filledstacked/ui/common/shared_styles.dart';
import 'package:filledstacked/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeCard extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  HomeCard({
    Key? key,
    required this.title,
    required this.description,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final children = [
      SvgPicture.asset(
        imagePath,
        fit: BoxFit.fitWidth,
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
    ];

    return ScreenTypeLayout.builder(
      mobile: (_) => Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(children: children),
      ),
      desktop: (_) => Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(children: children),
      ),
    );
  }
}
