// ignore_for_file: prefer_const_constructors

import 'package:filledstacked/ui/common/app_colors.dart';
import 'package:filledstacked/ui/common/shared_styles.dart';
import 'package:filledstacked/ui/common/ui_helpers.dart';
import 'package:filledstacked/ui/views/home/widgets/card_mobile.dart';
import 'package:filledstacked/ui/views/home/widgets/common/academy_icon.dart';
import 'package:filledstacked/ui/views/home/widgets/common/advertising_card_left.dart';
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

import 'home_viewmodel.dart';

class HomeViewMobile extends ViewModelWidget<HomeViewModel> {
  final TextEditingController? controller;
  const HomeViewMobile({super.key, this.controller});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
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
                  children: [
                    AcademyIcon(),
                    verticalSpaceLarge,
                    HomeTitle(),
                    verticalSpaceTiny,
                    HomeSubtitle(),
                    verticalSpaceLarge,
                    InputField(controller: controller),
                    verticalSpaceMedium,
                    HomeNotifyButton(onTap: viewModel.captureEmail),
                    verticalSpaceMedium,
                    Ladder(),
                    GradientCircle(),
                    HomeCardMobile(
                        title: loremTitle,
                        description: loremshortDescription,
                        imagePath: 'assets/contract.jpg'),
                    verticalSpaceMedium,
                    verticalSpaceMedium,
                    HomeCardMobile(
                        title: loremTitle,
                        description: loremshortDescription,
                        imagePath: 'assets/contract.jpg'),
                    verticalSpaceMedium,
                    verticalSpaceMedium,
                    HomeCardMobile(
                        title: loremTitle,
                        description: loremshortDescription,
                        imagePath: 'assets/contract.jpg'),
                    verticalSpaceMedium,
                    Texthero(),
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
