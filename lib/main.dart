import 'package:flutter/cupertino.dart' show CupertinoApp, CupertinoThemeData;
import 'package:flutter/material.dart' show MaterialApp, ThemeData;
import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:marvelapp/configs/routes.dart';
import 'package:marvelapp/widgets/platform.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MarvelApp());
}

class MarvelApp extends PlatformWidget {
  const MarvelApp({Key? key}) : super(key: key);

  @override
  Widget buildCupertinoWidget(BuildContext context) {
    return CupertinoApp(
      onGenerateTitle: (BuildContext context) {
        return AppLocalizations.of(context)!.appTitle;
      },
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: const CupertinoThemeData(),
      onGenerateRoute: AppRouter.generateRoute,
      home: _builder(context),
    );
  }

  @override
  Widget buildMaterialWidget(BuildContext context) {
    return MaterialApp(
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
            const RouteSettings(name: AppRoutes.splash),
          );
        } else {
          return AppRouter.get(
            context,
            const RouteSettings(name: AppRoutes.home),
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
