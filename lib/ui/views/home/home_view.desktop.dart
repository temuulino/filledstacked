import 'dart:math';
import 'package:filledstacked/ui/common/app_colors.dart';
import 'package:filledstacked/ui/common/app_constants.dart';
import 'package:filledstacked/ui/common/ui_helpers.dart';
import 'package:filledstacked/ui/views/home/widgets/common/academy_icon.dart';
import 'package:filledstacked/ui/views/home/widgets/common/advertising_card_right.dart';
import 'package:filledstacked/ui/views/home/widgets/gradient_circle.dart';
import 'package:filledstacked/ui/views/home/widgets/home_image.dart';
import 'package:filledstacked/ui/views/home/widgets/home_notify_button.dart';
import 'package:filledstacked/ui/views/home/widgets/home_subtitle.dart';
import 'package:filledstacked/ui/views/home/widgets/home_title.dart';
import 'package:filledstacked/ui/views/home/widgets/text-hero.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';
import 'package:filledstacked/ui/views/home/widgets/common/navigation.dart';
import 'home_viewmodel.dart';
import 'package:filledstacked/ui/views/home/widgets/home_card.dart';
import 'package:filledstacked/ui/views/home/widgets/common/advertising_card_left.dart';

class HomeViewDesktop extends ViewModelWidget<HomeViewModel> {
  final TextEditingController? controller;
  const HomeViewDesktop({super.key, this.controller});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    // For testing out the layout
    const loremTitle = 'Lorem ipsum dolor sit amet';
    const loremDescription =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat';
    const loremshortDescription =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod';

    return Scaffold(
      appBar: AppBar(title: NavBar()),
      backgroundColor: kcBackgroundColor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                width: kdDesktopMaxContentWidth,
                height: kdDesktopMaxContentHeight,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const AcademyIcon(),
                        const Spacer(flex: 2),
                        const HomeTitle(),
                        const HomeSubtitle(),
                        // Arrow
                        verticalSpaceMedium,
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 100),
                          child: SvgPicture.asset(
                            'assets/sign-up-arrow.svg',
                            color: kcPrimaryColor,
                          ),
                        ),
                        verticalSpaceSmall,
                        Row(children: [const HomeNotifyButton()]),
                        const Spacer(flex: 3),
                      ],
                    ),
                    const HomeImage(),
                    verticalSpaceLarge,
                  ],
                ),
              ),
              SizedBox(
                width: kdDesktopMaxContentWidth,
                height: kdDesktopMaxContentHeight * 0.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    HomeCard(
                        title: loremTitle,
                        description: loremshortDescription,
                        imagePath: 'assets/hero_real.png'),
                    HomeCard(
                        title: loremTitle,
                        description: loremshortDescription,
                        imagePath: 'assets/hero_real.png'),
                    HomeCard(
                        title: loremTitle,
                        description: loremshortDescription,
                        imagePath: 'assets/hero_real.png'),
                  ],
                ),
              ),
              verticalSpaceLarge,
              const SizedBox(
                width: kdDesktopMaxContentWidth,
                // height: kdDesktopMaxContentHeight * 0.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    AdvertisingCardLeft(
                        title: loremTitle,
                        imagePath: 'assets/master-web-hero-image.png',
                        description: loremDescription),
                    verticalSpaceMedium,
                    AdvertisingCardRight(
                        title: loremTitle,
                        imagePath: 'assets/master-web-hero-image.png',
                        description: loremDescription),
                    verticalSpaceMedium,
                    AdvertisingCardLeft(
                        title: loremTitle,
                        imagePath: 'assets/master-web-hero-image.png',
                        description: loremDescription),
                    verticalSpaceMedium,
                    AdvertisingCardRight(
                        title: loremTitle,
                        imagePath: 'assets/master-web-hero-image.png',
                        description: loremDescription),
                  ],
                ),
              ),
              verticalSpaceMedium,
              const SizedBox(
                width: kdDesktopMaxContentWidth,
                child: Texthero(),
              ),
              verticalSpaceMedium,
              GradientCircle(),
            ],
          ),
        ),
      ),
    );
  }
}
