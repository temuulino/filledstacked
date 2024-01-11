import 'package:filledstacked/ui/common/app_colors.dart';
import 'package:filledstacked/ui/common/app_constants.dart';
import 'package:filledstacked/ui/common/shared_styles.dart';
import 'package:filledstacked/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Texthero extends StatelessWidget {
  const Texthero({super.key});

  @override
  Widget build(BuildContext context) {
    const loremTitle = 'Lorem ipsum dolor sit amet';
    const loremDescription =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat';
    const loremshortDescription =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod';

    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Container(
        height: 200,
        width: kdDesktopMaxContentWidth,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: kcPrimaryColor,
              offset: const Offset(0, 20),
              blurRadius: 30,
              spreadRadius: -5,
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [kcTitleGradientLeft, kcTitleGradientRight],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/icons/translate.svg'),
              verticalSpaceSmall,
              Text(
                loremTitle,
                style: ktsBodyLargeBold.copyWith(color: Colors.white),
              ),
              verticalSpaceSmall,
              Text(
                loremDescription,
                style: ktsBodyRegular.copyWith(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
