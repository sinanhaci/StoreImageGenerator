import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:store_image_generator/core/extensions/context_extension.dart';
import '../global/global_controller.dart';

class MainBuild {
  MainBuild._();
  static Widget build(BuildContext context, Widget? child) {
    return ResponsiveWrapper.builder(
        MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: Stack(
            children: [
              GestureDetector(
                  onTap: () async =>
                      await MainController.instance.closeKeyboard(),
                  child: child ?? const SizedBox()),
              ValueListenableBuilder<bool>(
                valueListenable: MainController.instance.loadingStatus,
                builder: (context, bool status, Widget? child) {
                  return status
                      ? const CircularProgressIndicator()
                      : const SizedBox();
                },
              ),
            ],
          ),
        ),
        maxWidth: context.width,
        minWidth: 480,
        defaultScale: true,
        breakpoints: [
            const ResponsiveBreakpoint.resize(450, name: MOBILE),
            const ResponsiveBreakpoint.resize(480, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(800, name: TABLET),
            const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
            const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            const ResponsiveBreakpoint.resize(1800, name: DESKTOP),
            const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
        ],
        
      );
  }
}
