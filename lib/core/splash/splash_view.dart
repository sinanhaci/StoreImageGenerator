
import 'package:flutter/material.dart';
import '../_core_configuration/splash_configuration.dart';
import '../base/base_view.dart';
import '../log/page_logger/log_model.dart';
import 'splash_controller.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<SplashController>(
      viewModel: SplashController(),
      onLoggerKey: PageLoggerKeys.splash,
      onInit: (controller) {
        controller.setContext(context);
        controller.init();
      },
      onDispose: (controller) {
        controller.dispose();
      },
      onView: (context, controller) {
        return Scaffold(
          body: SplashConfiguration.splashView
        );
      },
    );
  }
}
