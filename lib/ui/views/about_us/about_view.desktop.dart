import 'dart:math';
import 'package:filledstacked/ui/common/app_colors.dart';
import 'package:filledstacked/ui/common/app_constants.dart';
import 'package:filledstacked/ui/common/shared_styles.dart';
import 'package:filledstacked/ui/common/ui_helpers.dart';
import 'package:filledstacked/ui/views/about_us/about_viewmodel.dart';
import 'package:filledstacked/ui/views/home/widgets/about_company.dart';
import 'package:filledstacked/ui/views/home/widgets/about_us.dart';
import 'package:filledstacked/ui/views/home/widgets/common/academy_icon.dart';
import 'package:filledstacked/ui/views/home/widgets/common/advertising_card_right.dart';
import 'package:filledstacked/ui/views/home/widgets/footer.dart';
import 'package:filledstacked/ui/views/home/widgets/gradient_circle.dart';
import 'package:filledstacked/ui/views/home/widgets/home_image.dart';
import 'package:filledstacked/ui/views/home/widgets/home_notify_button.dart';
import 'package:filledstacked/ui/views/home/widgets/home_subtitle.dart';
import 'package:filledstacked/ui/views/home/widgets/home_title.dart';
import 'package:filledstacked/ui/views/home/widgets/ladder.dart';
import 'package:filledstacked/ui/views/home/widgets/text-hero.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';
import 'package:filledstacked/ui/views/home/widgets/common/navigation.dart';
import 'about_viewmodel.dart';
import 'package:filledstacked/ui/views/home/widgets/home_card.dart';
import 'package:filledstacked/ui/views/home/widgets/common/advertising_card_left.dart';

class AboutViewDesktop extends ViewModelWidget<AboutViewModel> {
  final TextEditingController? controller;
  const AboutViewDesktop({super.key, this.controller});

  @override
  Widget build(BuildContext context, AboutViewModel viewModel) {
    // For testing out the layout
    return Scaffold(
      appBar: AppBar(
        title: NavBar(),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: kcBackgroundColor,
      // ignore: prefer_const_constructors
      body: SingleChildScrollView(
        child: const Center(
          child: Column(
            children: [
              SizedBox(
                width: kdDesktopMaxContentWidth,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    verticalSpaceLarge,
                    AboutUs(),
                    // verticalSpaceMedium,
                    AdvertisingCardLeft(
                        title: loremTitle,
                        imagePath: 'assets/About_1.png',
                        description: loremshortDescription),
                    verticalSpaceMedium,
                    AdvertisingCardRight(
                        title: loremTitle,
                        imagePath: 'assets/About_2.png',
                        description: loremshortDescription),
                    verticalSpaceMedium,
                    AdvertisingCardLeft(
                        title: loremTitle,
                        imagePath: 'assets/About_3.png',
                        description: loremshortDescription),
                    verticalSpaceMedium,
                    AdvertisingCardRight(
                        title: loremTitle,
                        imagePath: 'assets/About_4.png',
                        description: loremshortDescription),
                    // AboutCompany(),
                  ],
                ),
              ),
              SizedBox(
                width: kdDesktopMaxContentWidth,
                child: AboutCompany(),
              ),
              verticalSpaceLarge,
              verticalSpaceLarge,
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
