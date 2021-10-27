import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:marvelapp/widgets/responsive.dart';
import 'package:marvelapp/widgets/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.appTitle)),
      body: ResponsiveLayout(
        mobileLayout: _HomePageMobile(),
      ),
    );
  }
}

class _HomePageMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Switch(
        value: ThemeController.instance.themeType == ThemeType.dark,
        onChanged: (value) {
          ThemeController.instance.changeTheme();
        },
      ),
    );
  }
}
