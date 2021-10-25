import 'package:flutter/cupertino.dart' show CupertinoApp, CupertinoThemeData;
import 'package:flutter/material.dart' show MaterialApp, ThemeData;
import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:marvelapp/configs/init.dart';
import 'package:marvelapp/configs/route.dart';
import 'package:marvelapp/widgets/indicator.dart';
import 'package:marvelapp/widgets/platform.dart';

class App extends PlatformWidget {
  final String? home;
  final String? splash;

  const App({Key? key, this.home, this.splash}) : super(key: key);
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
          return splash != null
              ? AppRouter.get(context, RouteSettings(name: splash))
              : LoadingIndicator();
        } else {
          return home != null
              ? AppRouter.get(context, RouteSettings(name: home))
              : Container();
        }
      },
    );
  }
}
