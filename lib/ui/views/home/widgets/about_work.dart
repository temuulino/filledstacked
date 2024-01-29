import 'package:filledstacked/ui/common/app_colors.dart';
import 'package:filledstacked/ui/common/shared_styles.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutWork extends StatelessWidget {
  const AboutWork({super.key});

  @override
  Widget build(BuildContext context) {
    final children = [
      Text(
        '500+',
        style: ktsBodyLargeBold.copyWith(
            color: kcPrimaryColor,
            fontSize: MediaQuery.of(context).size.height * 0.1),
      ),
      Text(
        loremshortDescription,
        style: ktsBodyRegular.copyWith(color: kcMediumGrey),
        textAlign: TextAlign.center,
      ),
      Text(
        '500+',
        style: ktsBodyLargeBold.copyWith(
          color: kcPrimaryColor,
          fontSize: MediaQuery.of(context).size.height * 0.1,
        ),
      ),
      Text(
        loremshortDescription,
        style: ktsBodyRegular.copyWith(color: kcMediumGrey),
        textAlign: TextAlign.center,
      ),
      Text(
        '500+',
        style: ktsBodyLargeBold.copyWith(
          color: kcPrimaryColor,
          fontSize: MediaQuery.of(context).size.height * 0.1,
        ),
      ),
      Text(
        loremshortDescription,
        style: ktsBodyRegular.copyWith(color: kcMediumGrey),
        textAlign: TextAlign.center,
      ),
    ];

    return ScreenTypeLayout.builder(
      mobile: (_) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(children: children),
      ),
      desktop: (_) => Row(children: children),
    );
  }
}
