import 'package:flutter/cupertino.dart' show CupertinoApp;
import 'package:flutter/material.dart' show MaterialApp;
import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:marvelapp/configs/init.dart';
import 'package:marvelapp/configs/route.dart';
import 'package:marvelapp/configs/theme.dart';
import 'package:marvelapp/widgets/indicator.dart';
import 'package:marvelapp/widgets/platform.dart';
import 'package:marvelapp/widgets/theme.dart';

class App extends StatelessWidget {
  final String home;
  final String? splash;

  const App(this.home, {Key? key, this.splash}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Init.instance.initialize(),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return splash != null
              ? AppRouter.get(context, RouteSettings(name: splash))
              : Center(child: LoadingIndicator());
        } else {
          return AnimatedBuilder(
            animation: ThemeController.instance,
            builder: (context, child) => _AppBuilder(home),
          );
        }
      },
    );
  }
}

class _AppBuilder extends PlatformWidget {
  final String home;

  const _AppBuilder(this.home, {Key? key}) : super(key: key);

  @override
  CupertinoApp buildCupertinoWidget(BuildContext context) {
    return CupertinoApp(
      onGenerateTitle: (BuildContext context) {
        return AppLocalizations.of(context)!.appTitle;
      },
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      onGenerateRoute: AppRouter.generateRoute,
      theme: ThemeController.instance.themeType == ThemeType.light
          ? AppThemeDataCupertino.instance.lightTheme
          : AppThemeDataCupertino.instance.darkTheme,
      home: AppRouter.get(
        context,
        RouteSettings(name: home),
      ),
    );
  }

  @override
  MaterialApp buildMaterialWidget(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (BuildContext context) {
        return AppLocalizations.of(context)!.appTitle;
      },
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      onGenerateRoute: AppRouter.generateRoute,
      theme: ThemeController.instance.themeType == ThemeType.light
          ? AppThemeDataMaterial.instance.lightTheme
          : AppThemeDataMaterial.instance.darkTheme,
      home: AppRouter.get(
        context,
        RouteSettings(name: home),
      ),
    );
  }
}
