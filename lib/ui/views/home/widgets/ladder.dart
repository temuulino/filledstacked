import 'package:card_swiper/card_swiper.dart';
import 'package:filledstacked/ui/common/app_colors.dart';
import 'package:filledstacked/ui/common/shared_styles.dart';
import 'package:filledstacked/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Ladder extends StatelessWidget {
  Ladder({super.key});

  final size = 210.0;
  final List<String> titles = ['500K+', '1M+', '2M+'];
  final List<String> descriptions = [
    loremshortDescription,
    loremshortDescription,
    loremshortDescription
  ];

  @override
  Widget build(BuildContext context) {
    final childrenDesktop = [
      SizedBox(
        height: size,
        width: size,
        child: Column(
          children: [
            Text(
              '500K+',
              style:
                  ktsTitleText.copyWith(color: kcDarkGreyColor, fontSize: 50),
            ),
            verticalSpaceSmall,
            Text(
              loremshortDescription,
              style: ktsBodyRegular.copyWith(color: kcDarkGreyColor),
            ),
          ],
        ),
      ),
      horizontalSpaceLarge,
      Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: SizedBox(
          height: size,
          width: size,
          child: Column(
            children: [
              Text(
                '500K+',
                style:
                    ktsTitleText.copyWith(color: kcDarkGreyColor, fontSize: 50),
              ),
              verticalSpaceSmall,
              Text(
                loremshortDescription,
                style: ktsBodyRegular.copyWith(color: kcDarkGreyColor),
              ),
            ],
          ),
        ),
      ),
      horizontalSpaceLarge,
      Padding(
        padding: const EdgeInsets.only(top: 80.0),
        child: SizedBox(
          height: size,
          width: size,
          child: Column(
            children: [
              Text(
                '500K+',
                style:
                    ktsTitleText.copyWith(color: kcDarkGreyColor, fontSize: 50),
              ),
              verticalSpaceSmall,
              Text(
                loremshortDescription,
                style: ktsBodyRegular.copyWith(color: kcDarkGreyColor),
              ),
            ],
          ),
        ),
      )
    ];
    return ScreenTypeLayout.builder(
      desktop: (_) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: childrenDesktop,
      ),
      mobile: (_) => SizedBox(
        height: 300,
        child: Swiper(
          itemCount: titles.length,
          itemBuilder: (BuildContext context, index) {
            return buildCard(context, titles[index], descriptions[index]);
          },
          pagination: const SwiperPagination(),
          control: const SwiperControl(
            iconNext: Icons.arrow_forward_ios,
            iconPrevious: Icons.arrow_back_ios,
          ),
        ),
      ),
    );
  }

  Widget buildColumnWithPadding(double topPadding) {
    return Padding(
      padding: EdgeInsets.only(top: topPadding),
      child: SizedBox(
        height: 210.0,
        width: 210.0,
        child: Column(
          children: [
            Text(
              '500K+',
              style:
                  ktsTitleText.copyWith(color: kcDarkGreyColor, fontSize: 50),
            ),
            verticalSpaceSmall,
            Text(
              loremshortDescription,
              style: ktsBodyRegular.copyWith(color: kcDarkGreyColor),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCard(BuildContext context, String title, String description) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width - 32.0,
        child: Column(
          children: [
            Text(
              title,
              style:
                  ktsTitleText.copyWith(color: kcDarkGreyColor, fontSize: 50),
            ),
            verticalSpaceSmall,
            Text(
              description,
              style: ktsBodyRegular.copyWith(color: kcDarkGreyColor),
            ),
          ],
        ),
      ),
    );
  }
}
