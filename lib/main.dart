import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:marvelapp/pages/home.dart';
import 'package:marvelapp/pages/splash.dart';

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
        theme: CupertinoThemeData(primaryColor: Colors.blue),
        home: FutureBuilder(
          future: Init.instance.initialize(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return SplashPage();
            } else {
              return HomePage(title: AppLocalizations.of(context)!.appTitle);
            }
          },
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: true,
      onGenerateTitle: (BuildContext context) {
        return AppLocalizations.of(context)!.appTitle;
      },
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: FutureBuilder(
        future: Init.instance.initialize(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return SplashPage();
          } else {
            return HomePage(title: AppLocalizations.of(context)!.appTitle);
          }
        },
      ),
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
