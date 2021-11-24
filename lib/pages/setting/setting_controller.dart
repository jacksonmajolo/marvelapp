import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:marvelapp/widgets/theme.dart';

class SettingController {
  Future<void> initialize() async {}

  bool themeValue() {
    return ThemeController.instance.themeType == ThemeType.dark;
  }

  String themeText(BuildContext context) {
    return themeValue()
        ? AppLocalizations.of(context)!.darkTheme
        : AppLocalizations.of(context)!.ligthTheme;
  }

  Future<void> onChangeTheme() async {
    ThemeController.instance.changeTheme();
  }
}
