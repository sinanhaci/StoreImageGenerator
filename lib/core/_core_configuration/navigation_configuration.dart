// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:store_image_generator/src/app/main_board/view/main_board_view.dart';
import '../navigation/not_found.dart';
import '../splash/splash_view.dart';

class NavigationConfiguration{
  NavigationConfiguration._();

  
  static const String DEFAULT = '/';
  static const String MAINBOARD = '/mainBoard';




  static Route<dynamic> appRoute(RouteSettings args, MaterialPageRoute<dynamic> Function(Widget widget, String pageName) route){
    switch (args.name) {
      case DEFAULT:
        return route(const SplashView(),DEFAULT);
      case MAINBOARD:
        return route(MainBoardView(),MAINBOARD);
      default:
        return MaterialPageRoute(
          builder: (context) => const NotFoundNavigationWidget(),
        );
    }
  }
}