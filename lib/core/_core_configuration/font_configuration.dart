import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontConfiguration{
  FontConfiguration._();
  static TextStyle get appFont => GoogleFonts.montserrat();
  static double get largeSize => 35;
  static double get mediumSize => 20;
  static double get smallSize => 11;
  static double get xSmallSize => 7;


  static FontWeight get boldFontWeight => FontWeight.w600;
  static FontWeight get normalFontWeight => FontWeight.w400;

  static double? get letterSpacing => null;


}