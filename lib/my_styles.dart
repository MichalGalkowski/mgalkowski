import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mgalkowski/my_colors.dart';

class MyStyles {
  static TextStyle headerText = GoogleFonts.poppins(
      color: MyColors.accentColor, fontWeight: FontWeight.w200, fontSize: 20);
  static TextStyle headerTextDark = GoogleFonts.poppins(
      color: MyColors.darkColor, fontWeight: FontWeight.w300, fontSize: 20);
  static TextStyle drawerText = GoogleFonts.poppins(
      color: MyColors.accentColor, fontWeight: FontWeight.w200, fontSize: 14);
  static TextStyle buttonTextWhite = GoogleFonts.poppins(
      color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16);
  static TextStyle buttonTextGrey = GoogleFonts.poppins(
      color: Colors.grey.shade700, fontWeight: FontWeight.w500, fontSize: 12);
  static TextStyle headerDarkBold = GoogleFonts.poppins(
      color: MyColors.darkColor, fontWeight: FontWeight.w700, fontSize: 18);
  static TextStyle textDarkLight = GoogleFonts.poppins(
      color: MyColors.darkColor, fontWeight: FontWeight.w400, fontSize: 22);
  static TextStyle textDarkSmall = GoogleFonts.poppins(
      color: MyColors.darkColor, fontWeight: FontWeight.w400, fontSize: 14);
}
