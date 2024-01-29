import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const loremTitle = 'Lorem ipsum dolor sit amet';
const loremDescription =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat';
const loremshortDescription =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod';

const sampleImagePath = 'assets/contract.jpg';

TextStyle get ktsTitleText => GoogleFonts.openSans(
      fontSize: 80,
      height: 0.95,
      fontWeight: FontWeight.w800,
    );

TextStyle get ktsBodySmall => GoogleFonts.openSans(
      fontSize: 12,
    );

TextStyle get ktsBodySmallBold => GoogleFonts.openSans(
      fontSize: 12,
      fontWeight: FontWeight.w800,
    );

TextStyle get ktsBodyRegular => GoogleFonts.openSans(
      fontSize: 15,
    );

TextStyle get ktsBodyRegularBold => GoogleFonts.openSans(
      fontSize: 15,
      fontWeight: FontWeight.w800,
    );

TextStyle get ktsBodyLarge => GoogleFonts.openSans(
      fontSize: 20,
    );

TextStyle get ktsBodyLargeBold => GoogleFonts.openSans(
      fontSize: 20,
      fontWeight: FontWeight.w800,
    );
