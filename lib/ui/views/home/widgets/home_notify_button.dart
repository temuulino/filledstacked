import 'package:filledstacked/extensions/hover_extensions.dart';
import 'package:filledstacked/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeNotifyButton extends StatelessWidget {
  final Function()? onTap;
  const HomeNotifyButton({Key? key, this.onTap}) : super(key: key);

  void _launchURL() async {
    final Uri _facebookurl = Uri.parse('https://www.facebook.com/EngRussian');
    if (!await launchUrl(_facebookurl)) {
      throw Exception('Could not launch $_facebookurl');
    }
  }

  @override
  Widget build(BuildContext context) {
    // We're adding a Gesture detector now so we don't need to later
    return GestureDetector(
      onTap: _launchURL,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: kcPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Text(
          'Холбогдох',
          style: TextStyle(
              color: kcBackgroundColor,
              fontWeight: FontWeight.w700,
              fontSize: 20),
        ),
      ),
    ).showCursorOnHover;
  }
}
