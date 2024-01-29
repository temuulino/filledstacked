import 'package:filledstacked/ui/common/app_colors.dart';
import 'package:filledstacked/ui/common/shared_styles.dart';
import 'package:filledstacked/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutCompany extends StatelessWidget {
  const AboutCompany({super.key});

  @override
  Widget build(BuildContext context) {
    final children = [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            loremTitle,
            style: ktsTitleText.copyWith(color: kcPrimaryColor, fontSize: 16),
            textAlign: TextAlign.center,
          ),
          verticalSpaceMedium,
          Text(
            loremshortDescription,
            style: ktsBodyLarge.copyWith(color: kcPrimaryColor),
            textAlign: TextAlign.center,
          ),
          verticalSpaceMedium,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => _makePhoneCall('99050661'),
                child: Row(
                  children: [
                    const Icon(
                      Icons.phone_callback_rounded,
                      color: kcPrimaryColor,
                    ),
                    Text(
                      '+976 9905-0661',
                      style: ktsBodyRegularBold.copyWith(color: kcPrimaryColor),
                    ),
                  ],
                ),
              ),
              horizontalSpaceSmall,
              InkWell(
                onTap: () => _sendEmail('test@gmail.com'),
                child: Row(
                  children: [
                    const Icon(
                      Icons.mail,
                      color: kcPrimaryColor,
                    ),
                    Text(
                      'test@gmail.com',
                      style: ktsBodyRegularBold.copyWith(color: kcPrimaryColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
          verticalSpaceMedium,
        ],
      ),
      horizontalSpaceLarge,
      Container(
        width: 380,
        height: 380,
        alignment: Alignment.bottomRight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.0),
          image: DecorationImage(
            image: AssetImage('assets/about-company.png'),
          ),
        ),
      )
    ];

    return ScreenTypeLayout.builder(
      mobile: (_) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: children,
      ),
      desktop: (_) => Row(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }

// Makes the phonecall
  _makePhoneCall(String phoneNumber) async {
    final url = 'tel:$phoneNumber';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

// Connects them to the email address
  _sendEmail(String emailAddress) async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: emailAddress,
      queryParameters: {'subject': 'Hello', 'body': 'How are you?'},
    );

    if (await canLaunch(emailLaunchUri.toString())) {
      await launch(emailLaunchUri.toString());
    } else {
      throw 'Could not launch $emailLaunchUri';
    }
  }
}
