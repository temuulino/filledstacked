import 'dart:ui';

import 'package:filledstacked/ui/common/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeImage extends StatelessWidget {
  const HomeImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        'assets/hero_real.png',
        width: kdDesktopMaxContentWidth * 0.4,
        height: getValueForScreenType<double>(
          context: context,
          mobile: 650,
          desktop: double.infinity,
        ),
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
