import 'dart:io';

import 'package:flutter/cupertino.dart' show CupertinoApp, CupertinoThemeData;
import 'package:flutter/material.dart' show MaterialApp, ThemeData;
import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:marvelapp/configs/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MarvelApp());
}

class MarvelApp extends StatelessWidget {
  const MarvelApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoApp(
        debugShowCheckedModeBanner: true,
        onGenerateTitle: (BuildContext context) {
          return AppLocalizations.of(context)!.appTitle;
        },
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        theme: CupertinoThemeData(),
        onGenerateRoute: AppRouter.generateRoute,
        home: _builder(context),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: true,
      onGenerateTitle: (BuildContext context) {
        return AppLocalizations.of(context)!.appTitle;
      },
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(),
      onGenerateRoute: AppRouter.generateRoute,
      home: _builder(context),
    );
  }

  Widget _builder(BuildContext context) {
    return FutureBuilder(
      future: Init.instance.initialize(),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return AppRouter.get(
            context,
            RouteSettings(name: AppRoutes.splash),
          );
        } else {
          return AppRouter.get(
            context,
            RouteSettings(name: AppRoutes.home),
          );
        }
      },
    );
  }
}

class Init {
  Init._();
  static final instance = Init._();

  Future initialize() async {
    await Future.delayed(const Duration(seconds: 2));
  }
}
