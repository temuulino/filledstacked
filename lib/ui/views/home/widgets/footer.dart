import 'package:filledstacked/ui/common/app_colors.dart';
import 'package:filledstacked/ui/common/shared_styles.dart';
import 'package:filledstacked/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  void _launchURL() async {
    final Uri _facebookurl = Uri.parse('https://www.facebook.com/EngRussian');
    if (!await launchUrl(_facebookurl)) {
      throw Exception('Could not launch $_facebookurl');
    }
  }

  @override
  Widget build(BuildContext context) {
    final childrenDesktop = [
      const Icon(
        Icons.email,
        color: Colors.white,
      ),
      horizontalSpaceSmall,
      Text(
        'orchuulga@gmail.com',
        style: ktsBodyRegular.copyWith(color: Colors.white),
      ),
      horizontalSpaceMedium,
      const Icon(
        Icons.phone,
        color: Colors.white,
      ),
      horizontalSpaceSmall,
      Text(
        '9905-0661',
        style: ktsBodyRegular.copyWith(color: Colors.white),
      ),
      horizontalSpaceMedium,
      Text(
        'Баталгаат орчуулга',
        style: ktsBodyRegular.copyWith(color: Colors.white),
      ),
      // horizontalSpaceSmall,
      InkWell(
        onTap: () => _launchURL,
        child: Container(
          padding: const EdgeInsets.all(10),
          child: const Icon(
            Icons.facebook,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
    ];

    final childrenMobile = [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.email,
            color: Colors.white,
          ),
          horizontalSpaceSmall,
          Text(
            'orchuulga@gmail.com',
            style: ktsBodyRegular.copyWith(color: Colors.white),
          ),
        ],
      ),
      verticalSpaceSmall,
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.phone,
            color: Colors.white,
          ),
          horizontalSpaceSmall,
          Text(
            '9905-0661',
            style: ktsBodyRegular.copyWith(color: Colors.white),
          ),
        ],
      ),
      verticalSpaceSmall,
      Text(
        'Баталгаат орчуулга',
        style: ktsBodyRegular.copyWith(color: Colors.white),
      ),
      verticalSpaceSmall,
      InkWell(
        onTap: () => _launchURL,
        child: Container(
          child: const Icon(
            Icons.facebook,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
    ];

    return ScreenTypeLayout.builder(
      desktop: (_) => Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
        color: kcPrimaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: childrenDesktop,
        ),
      ),
      mobile: (_) => Container(
        height: 150,
        width: MediaQuery.of(context).size.width,
        color: kcPrimaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: childrenMobile,
        ),
      ),
    );
  }
}
