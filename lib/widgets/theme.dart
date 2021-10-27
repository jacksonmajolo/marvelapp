import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

enum ThemeType { dark, light }

class ThemeController with ChangeNotifier {
  ThemeType themeType = ThemeType.light;

  ThemeController._({ThemeType? themeType}) {
    if (themeType != null) {
      switch (themeType) {
        case ThemeType.light:
          setThemeLight();
          break;
        case ThemeType.dark:
          setThemeDark();
          break;
        default:
          setThemeLight();
          break;
      }
    } else {
      setThemeLight();
    }
  }

  static ThemeController instance = ThemeController._();

  Future<void> changeTheme() async {
    switch (themeType) {
      case ThemeType.light:
        setThemeDark();
        break;
      case ThemeType.dark:
        setThemeLight();
        break;
      default:
        setThemeLight();
        break;
    }
  }

  Future<void> setThemeLight() async {
    themeType = ThemeType.light;
    notifyListeners();
  }

  Future<void> setThemeDark() async {
    themeType = ThemeType.dark;
    notifyListeners();
  }
}
