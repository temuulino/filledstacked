import 'package:filledstacked/ui/common/app_colors.dart';
import 'package:filledstacked/ui/common/shared_styles.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double kdUnitHeightValue = MediaQuery.of(context).size.height * 0.07;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GradientText(
          'Баталгаат\nОрчуулга',
          style: ktsTitleText.copyWith(fontSize: kdUnitHeightValue),
          colors: const [kcTitleGradientLeft, kcTitleGradientRight],
        ),
        Text(
          'SUBTITLE',
          style: ktsTitleText.copyWith(
              fontSize: getValueForScreenType<double>(
            context: context,
            mobile: 60,
            desktop: 80,
          )),
        ),
      ],
    );
  }
}
