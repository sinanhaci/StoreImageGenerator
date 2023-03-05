import 'dart:ui';

import 'package:flutter/material.dart';
import 'core/_core_configuration/init_configuration.dart';
import 'core/_core_configuration/navigation_configuration.dart';
import 'core/localization/localization_controller.dart';
import 'core/navigation/navigation_route.dart';
import 'core/navigation/navigation_service.dart';
import 'core/theme/app_theme_controller.dart';
import 'core/theme/themes/app_theme_light.dart';
import 'core/widgets/init/init.dart';

void main() async => await AppConfiguration.init();

class StoreImageGenerator extends StatelessWidget {
  const StoreImageGenerator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ValueListenableBuilder<ThemeMode>(
      valueListenable: AppThemeController.themeMode,
      builder: (BuildContext context, ThemeMode themeMode, Widget? child) {
        return MaterialApp(
          scrollBehavior: AppScrollBehavior(),
          title: 'Core App',
          builder: MainBuild.build,
          navigatorKey: NavigationService.instance.navigatorKey,
          initialRoute: NavigationConfiguration.DEFAULT,
          onGenerateRoute: NavigationRoute.instance.generateRoute,
          theme: AppThemeLight.instance.theme,
          //darkTheme: AppThemeDark.instance.theme,
         // themeMode: themeMode,
          localizationsDelegates:LocalizationController.instance.localizationsDelegates,
          supportedLocales: LocalizationController.instance.supportedLocale,
          locale: LocalizationController.deviceLocale,
        );
      },
    );
  }
}

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
    PointerDeviceKind.trackpad,
  };
}

