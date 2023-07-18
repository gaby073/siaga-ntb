import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ColorConstants {
  static Color OrangeCo = Color(0xFFF57E39);
  static Color BlackCo = Color(0xFF372E30);
  static Color BlackCo2 = Color(0xFF372E30).withOpacity(0.8);
  static Color PrimaryCo = Color(0xFF3BA6D4);
  static Color SecondaryCo = Color(0xFF48BEE6);
  static Color WhiteCo = Color(0xFFFCFFFF);
  static Color BgCo = Color(0xFFF8F9FE);
}

TextStyle get HeadingStyle1 => GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: ColorConstants.WhiteCo,
      ),
    );

TextStyle get HeadingStyle2 => GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        // color: ColorConstants.BlackCo,
      ),
    );

TextStyle get HeadingStyle3 => GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: ColorConstants.BlackCo,
      ),
    );
TextStyle get MediumHeadingStyle1 => GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: ColorConstants.WhiteCo,
      ),
    );
TextStyle get MediumHeadingStyle2 => GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: ColorConstants.BlackCo,
      ),
    );
TextStyle get NormalText => GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: ColorConstants.BlackCo,
      ),
    );

TextStyle get MediumSubTitle => GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
    );

TextStyle get SubTitleBlack => GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: ColorConstants.BlackCo2,
      ),
    );

TextStyle get SubTitleWhite => GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: ColorConstants.WhiteCo,
      ),
    );
