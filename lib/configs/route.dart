// ignore_for_file: avoid_classes_with_only_static_members

import 'dart:io';
import 'package:flutter/cupertino.dart' show CupertinoPageRoute;
import 'package:flutter/material.dart' show MaterialPageRoute;
import 'package:flutter/widgets.dart';
import 'package:marvelapp/pages/home.dart';
import 'package:marvelapp/pages/not_found.dart';
import 'package:marvelapp/pages/splash.dart';

class AppRoutes {
  static const splash = '/splash';
  static const welcome = '/welcome';
  static const notFound = '/not-found';
  static const home = '/home';
}

class AppRouter {
  static Widget get(BuildContext context, RouteSettings settings) {
    // final args = settings.arguments;

    switch (settings.name) {
      case AppRoutes.home:
        return const HomePage();
      case AppRoutes.splash:
        return SplashPage();
      case AppRoutes.notFound:
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
}
