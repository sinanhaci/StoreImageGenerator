import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:store_image_generator/src/app/design_board/viewmodel/design_board_viewmodel.dart';
import 'package:store_image_generator/src/app/main_board/viewmodel/main_board_viewmodel.dart';
import '../../main.dart';
import '../api/base_api_services/base_request_services.dart';
import '../utilities/cache/local_cache_controller.dart';
import '../localization/localization_controller.dart';
import '../log/exception_logger/sentry.dart';
import '../theme/app_theme_controller.dart';

final getIt = GetIt.instance;

class AppConfiguration {
  AppConfiguration._();

  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await runZonedGuarded(
      () async {
        await LocalCache.init();
        await AppThemeController.init();
        await LocalizationController.init();
        await BaseRequestMethod().dioInitialize();
        //await LocalNotificationController().init();
        getIt.registerSingleton<MainBoardViewModel>(MainBoardViewModel());
        getIt.registerSingleton<DesignBoardViewModel>(DesignBoardViewModel());

        await SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
        ]);
        SentryConfiguration.init(const StoreImageGenerator());
      },
      SentryConfiguration.captureException,
    );
  }
}
