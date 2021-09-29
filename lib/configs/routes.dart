import 'dart:io';

import 'package:flutter/cupertino.dart' show CupertinoPageRoute;
import 'package:flutter/material.dart' show MaterialPageRoute;
import 'package:flutter/widgets.dart';
import 'package:marvelapp/pages/home.dart';
import 'package:marvelapp/pages/not_found.dart';
import 'package:marvelapp/pages/splash.dart';

class AppRoutes {
  static const home = '/';
  static const splash = '/splash';
  static const not_found = '/not-found';
}

class AppRouter {
  static get(BuildContext context, RouteSettings settings) {
    // final args = settings.arguments;

    switch (settings.name) {
      case AppRoutes.home:
        return HomePage();
      case AppRoutes.splash:
        return SplashPage();
      case AppRoutes.not_found:
        return NotFoundPage();
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

  // static Future<void> navigate(BuildContext context, String route) async {
  //   print('navigate');
  // }
}
