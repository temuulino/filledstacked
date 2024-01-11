import 'package:filledstacked/ui/common/app_colors.dart';
import 'package:filledstacked/ui/common/app_constants.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final TextEditingController?
      controller; // This is extra, but we'll need it very shortly
  const InputField({Key? key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kdDesktopMaxContentWidth * 0.3,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: kcVeryLightGrey,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        controller: controller,
        decoration: const InputDecoration.collapsed(
          hintText: 'Enter your Email',
          hintStyle: TextStyle(
            color: kcMediumGrey,
          ),
          filled: true,
          fillColor: kcVeryLightGrey,
        ),
      ),
    );
  }
}
