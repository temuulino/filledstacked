// ignore_for_file: prefer_const_constructors

import 'package:filledstacked/ui/common/app_colors.dart';
import 'package:filledstacked/ui/common/shared_styles.dart';
import 'package:filledstacked/ui/common/ui_helpers.dart';
import 'package:filledstacked/ui/views/home/widgets/about_company.dart';
import 'package:filledstacked/ui/views/home/widgets/about_work.dart';
import 'package:filledstacked/ui/views/home/widgets/card_mobile.dart';
import 'package:filledstacked/ui/views/home/widgets/common/academy_icon.dart';
import 'package:filledstacked/ui/views/home/widgets/common/advertising_card_left.dart';
import 'package:filledstacked/ui/views/home/widgets/common/advertising_card_right.dart';
import 'package:filledstacked/ui/views/home/widgets/common/input_field.dart';
import 'package:filledstacked/ui/views/home/widgets/common/navigation.dart';
import 'package:filledstacked/ui/views/home/widgets/footer.dart';
import 'package:filledstacked/ui/views/home/widgets/gradient_circle.dart';
import 'package:filledstacked/ui/views/home/widgets/home_image.dart';
import 'package:filledstacked/ui/views/home/widgets/home_notify_button.dart';
import 'package:filledstacked/ui/views/home/widgets/home_subtitle.dart';
import 'package:filledstacked/ui/views/home/widgets/home_title.dart';
import 'package:filledstacked/ui/views/home/widgets/ladder.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:filledstacked/ui/views/home/widgets/home_card.dart';
import 'package:filledstacked/ui/views/home/widgets/text-hero.dart';
import 'package:filledstacked/ui/views/home/widgets/about_us.dart';
import 'about_viewmodel.dart';

class AboutViewMobile extends ViewModelWidget<AboutViewModel> {
  final TextEditingController? controller;
  const AboutViewMobile({super.key, this.controller});

  @override
  Widget build(BuildContext context, AboutViewModel viewModel) {
    return Scaffold(
      appBar: AppBar(
        title: NavBar(),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: kcBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 50,
              ),
              child: Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: const [
                    AboutUs(),
                    // verticalSpaceMedium,
                    AboutWork(),
                    verticalSpaceLarge,
                    // verticalSpaceLarge,
                    AdvertisingCardLeft(
                        title: loremTitle,
                        imagePath: sampleImagePath,
                        description: loremshortDescription),
                    // verticalSpaceMedium,
                    AdvertisingCardLeft(
                        title: loremTitle,
                        imagePath: sampleImagePath,
                        description: loremshortDescription),
                    // verticalSpaceMedium,
                    AdvertisingCardLeft(
                        title: loremTitle,
                        imagePath: sampleImagePath,
                        description: loremshortDescription),
                    verticalSpaceMedium,
                    AboutCompany(),
                  ],
                ),
              ),
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
