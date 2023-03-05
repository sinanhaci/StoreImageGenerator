import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../app_theme_manager.dart';
import '../light_theme/light_theme_interface.dart';
import '../../theme/extensions/color_extensions.dart';

class AppThemeLight extends AppTheme with ILightTheme {
  static AppThemeLight? _instance;
  static AppThemeLight get instance {
    _instance ??= AppThemeLight._init();
    return _instance!;
  }

  AppThemeLight._init();

  @override
  ThemeData get theme => ThemeData.light().copyWith(
        brightness: Brightness.light,
        colorScheme: _appColorScheme,
        textTheme: textThemes,
        appBarTheme: ThemeData.light().appBarTheme.copyWith(
          backgroundColor: _appColorScheme.white,
              systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        scaffoldBackgroundColor: _appColorScheme.white,
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: MaterialStatePropertyAll(_appColorScheme.candyLight),
          thickness: const MaterialStatePropertyAll(5),
          thumbVisibility: const MaterialStatePropertyAll(false),
          trackBorderColor: MaterialStatePropertyAll(_appColorScheme.candyLight),
          crossAxisMargin: 5,
          mainAxisMargin: 10
        )
      );

  TextTheme get textThemes =>
   ThemeData.light().textTheme.copyWith(
      displayLarge: textThemeLight.largeNormal.apply(color: _appColorScheme.primary),
      displayMedium: textThemeLight.mediumNormal.apply(color: _appColorScheme.primary),
      displaySmall: textThemeLight.smallNormal.apply(color: _appColorScheme.primary),
      headlineLarge: textThemeLight.largeBold.apply(color: _appColorScheme.primary),
      headlineMedium: textThemeLight.mediumBold.apply(color: _appColorScheme.primary),
      headlineSmall: textThemeLight.smallBold.apply(color: _appColorScheme.primary),
      labelSmall: textThemeLight.xSmallBold.apply(color: _appColorScheme.primary),
      bodySmall: textThemeLight.xSmallNormal.apply(color: _appColorScheme.primary),
    );
  

  ColorScheme get _appColorScheme {
    return const ColorScheme.light().copyWith(
      background: colorSchemeLight.background,
      onBackground: colorSchemeLight.onBackground,
      primary: colorSchemeLight.primary,
      secondary: colorSchemeLight.secondary,
      error: colorSchemeLight.error,
      inversePrimary: colorSchemeLight.inversePrimary,
      brightness: Brightness.light,
    );
  }
}
