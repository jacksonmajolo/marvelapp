// ignore_for_file: avoid_classes_with_only_static_members

import 'dart:io';
import 'package:flutter/cupertino.dart' show CupertinoPageRoute;
import 'package:flutter/material.dart' show MaterialPageRoute;
import 'package:flutter/widgets.dart';
import 'package:marvelapp/pages/home/home_page.dart';
import 'package:marvelapp/pages/not_found_page.dart';
import 'package:marvelapp/pages/setting/setting_page.dart';
import 'package:marvelapp/pages/splash_page.dart';
import 'package:marvelapp/pages/welcome/welcome_page.dart';

class AppRoutes {
  static const splash = '/splash';
  static const welcome = '/welcome';
  static const home = '/home';
  static const setting = '/setting';
}

class AppRouter {
  static Widget get(BuildContext context, RouteSettings settings) {
    // final args = settings.arguments;

    switch (settings.name) {
      case AppRoutes.welcome:
        return WelcomePage();
      case AppRoutes.home:
        return HomePage();
      case AppRoutes.setting:
        return SettingPage();
      case AppRoutes.splash:
        return SplashPage();
      default:
        return NotFoundPage();
    }
  }

  static Route<dynamic> generateRoute(RouteSettings settings) {
    if (!Platform.isIOS) {
      return CupertinoPageRoute(
        builder: (context) => AppRouter.get(context, settings),
      );
    }

    return MaterialPageRoute(
      builder: (context) => AppRouter.get(context, settings),
    );
  }
}
