
// ignore_for_file: avoid_shadowing_type_parameters

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

extension ContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
}

extension MediaQueryExtension on BuildContext {
  double get height => mediaQuery.size.height;
  double get width => mediaQuery.size.width;

  double get xLowValue => height * 0.005;
  double get lowValue => height * 0.01;
  double get normalValue => height * 0.02;
  double get mediumValue => height * 0.04;
  double get highValue => height * 0.1;
}

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colors => theme.colorScheme;
}

extension PaddingExtensionAll on BuildContext {
  EdgeInsets get paddingXLow => EdgeInsets.all(xLowValue);
  EdgeInsets get paddingLow => EdgeInsets.all(lowValue);
  EdgeInsets get paddingNormal => EdgeInsets.all(normalValue);
  EdgeInsets get paddingMedium => EdgeInsets.all(mediumValue);
  EdgeInsets get paddingHigh => EdgeInsets.all(highValue);
}

extension RadiusExtensionAll on BuildContext {
  BorderRadius get radiusLow => const BorderRadius.all(Radius.circular(8));
  BorderRadius get radiusLowTop => const BorderRadius.only(topLeft: Radius.circular(8),topRight: Radius.circular(8));
  BorderRadius get radiusLowBottom => const BorderRadius.only(bottomLeft: Radius.circular(8),bottomRight: Radius.circular(8));
  BorderRadius get radiusMedium => const BorderRadius.all(Radius.circular(14));
  BorderRadius get radiusHight => const BorderRadius.all(Radius.circular(20));
}


extension PaddingExtensionSymetric on BuildContext {
  EdgeInsets get paddingXLowVertical => EdgeInsets.symmetric(vertical: xLowValue);
  EdgeInsets get paddingLowVertical => EdgeInsets.symmetric(vertical: lowValue);
  EdgeInsets get paddingNormalVertical => EdgeInsets.symmetric(vertical: normalValue);
  EdgeInsets get paddingMediumVertical => EdgeInsets.symmetric(vertical: mediumValue);
  EdgeInsets get paddingHighVertical => EdgeInsets.symmetric(vertical: highValue);

  EdgeInsets get paddingXLowHorizontal => EdgeInsets.symmetric(horizontal: xLowValue);
  EdgeInsets get paddingLowHorizontal => EdgeInsets.symmetric(horizontal: lowValue);
  EdgeInsets get paddingNormalHorizontal => EdgeInsets.symmetric(horizontal: normalValue);
  EdgeInsets get paddingMediumHorizontal => EdgeInsets.symmetric(horizontal: mediumValue);
  EdgeInsets get paddingHighHorizontal => EdgeInsets.symmetric(horizontal: highValue);
}

extension PageExtension on BuildContext {
  Color get randomColor => Colors.primaries[Random().nextInt(17)];
}

extension DurationExtension on BuildContext {
  Duration get lowDuration => const Duration(milliseconds: 500);
  Duration get normalDuration => const Duration(seconds: 1);
}


extension ResponsiveValues<T> on BuildContext {
  
  T responsiveValues<T>({required  phone,required T tablet,required T desktop,required T desktop4k}){
    var responsiveWrapper = ResponsiveWrapper.of(this);
    if(responsiveWrapper.equals(MOBILE) || responsiveWrapper.isSmallerThan(MOBILE)){
      return phone;  
    }else if(responsiveWrapper.equals(TABLET)){
      return tablet;
    }else if(responsiveWrapper.equals(DESKTOP)){
      return desktop;
    }else{
      return desktop4k;
    }
  }
}