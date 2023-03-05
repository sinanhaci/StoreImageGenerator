import 'package:flutter/material.dart';


extension CustomColorScheme on ColorScheme {
  Color get scaffoldBackround => brightness == Brightness.light ? const Color(0xFFF1F1F1)  :  const Color(0xFF282E3A); 
  


  Color get defaultButtonColor => brightness == Brightness.light ? const Color(0xFFF1F1F1)  :  const Color(0xFF282E3A); 
  Color get defaultButtonTextColor => brightness == Brightness.light ? const Color(0xFFF1F1F1)  :  const Color(0xFF282E3A); 

  Color get defaultInputBackgroundColor => brightness == Brightness.light ? const Color(0xFFF1F1F1)  :  const Color(0xFF282E3A); 


  Color get white => const Color(0xFFFFFFFF);
  Color get black => const Color(0xFF000000);
  Color get candy => const Color(0xFFff5a5e);
  Color get candyLight => const Color(0xFFFFB0AB);
  Color get gray => const Color(0xFFf4f4f4);
  Color get darkGray => const Color(0xFFe3e7e8);
  Color get yellow => const Color(0xFFfcbe27);
  Color get label => const Color(0xFF717792);







}