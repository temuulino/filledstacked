import 'package:filledstacked/ui/common/app_colors.dart';
import 'package:filledstacked/ui/common/app_constants.dart';
import 'package:filledstacked/ui/common/shared_styles.dart';
import 'package:filledstacked/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:url_launcher/url_launcher.dart';

class Texthero extends StatelessWidget {
  const Texthero({super.key});

  void _launchURL() async {
    final Uri _facebookurl = Uri.parse('https://www.facebook.com/EngRussian');
    if (!await launchUrl(_facebookurl)) {
      throw Exception('Could not launch $_facebookurl');
    }
  }

  @override
  Widget build(BuildContext context) {
    double kdUnitHeightValue = MediaQuery.of(context).size.height * 0.05;
    double kdMultiplier = 6;
    print({"***Ene unit height value${kdUnitHeightValue}***"});

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: kdUnitHeightValue * 7,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          // padding: EdgeInsets.all(16.0),
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/icons/translate.svg'),
              verticalSpaceSmall,
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: GradientText(
                    'Найдвартай орчуулга\nУян хатан үнэ',
                    style: ktsTitleText.copyWith(fontSize: kdUnitHeightValue),
                    textAlign: TextAlign.center,
                    colors: const [kcTitleGradientLeft, kcTitleGradientRight],
                  ),
                ),
              ),
              verticalSpaceMedium,
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: ElevatedButton(
                  onPressed: _launchURL,
                  style: ElevatedButton.styleFrom(
                    primary:
                        kcPrimaryColor, // Set your desired background color here
                    padding: const EdgeInsets.all(20),
                  ),
                  child: const Text(
                    'Холбогдох',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              verticalSpaceSmall,
            ],
          ),
        ),
      ),
    );
  }
}
