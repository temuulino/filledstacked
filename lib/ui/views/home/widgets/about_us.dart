import 'package:filledstacked/ui/common/app_colors.dart';
import 'package:filledstacked/ui/common/app_constants.dart';
import 'package:filledstacked/ui/common/shared_styles.dart';
import 'package:filledstacked/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    double kdUnitHeightValue = MediaQuery.of(context).size.height * 0.05;
    double kdMultiplier = 6;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      // ignore: sized_box_for_whitespace
      child: Container(
        height: kdUnitHeightValue * 7,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 8,
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: GradientText(
                    'Бидний тухай',
                    style: ktsTitleText.copyWith(fontSize: kdUnitHeightValue),
                    textAlign: TextAlign.center,
                    colors: const [kcTitleGradientLeft, kcTitleGradientRight],
                  ),
                ),
                verticalSpaceMedium,
                Text(
                  loremDescription,
                  style: ktsBodyRegular.copyWith(color: kcBlack),
                  textAlign: TextAlign.center,
                ),
                verticalSpaceSmall,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
