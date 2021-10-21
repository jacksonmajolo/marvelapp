// import 'dart:io';
import 'package:flutter/cupertino.dart'
    show CupertinoThemeData, CupertinoColors;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' show ThemeData, Colors, ColorScheme;
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

enum AppThemeType { dark, light }

abstract class AppThemeData {
  Diagnosticable? darkTheme;
  Diagnosticable? lightTheme;
}

class AppThemeDataMaterial extends AppThemeData {
  AppThemeDataMaterial() {
    darkTheme = ThemeData(
      primarySwatch: Colors.grey,
      primaryColor: Colors.black,
      brightness: Brightness.dark,
      backgroundColor: const Color(0xFF212121),
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white),
      // accentIconTheme: const IconThemeData(color: Colors.black),
      dividerColor: Colors.black12,
    );

    lightTheme = ThemeData(
      primarySwatch: Colors.grey,
      primaryColor: Colors.white,
      brightness: Brightness.light,
      backgroundColor: const Color(0xFFE5E5E5),
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black),
      // accentIconTheme: const IconThemeData(color: Colors.white),
      dividerColor: Colors.white54,
    );
  }
}

class AppThemeDataCupertino extends AppThemeData {
  AppThemeDataCupertino() {
    darkTheme = const CupertinoThemeData(
      primaryColor: CupertinoColors.black,
      brightness: Brightness.dark,
    );

    lightTheme = const CupertinoThemeData(
      primaryColor: CupertinoColors.white,
      brightness: Brightness.light,
    );
  }
}

class AppThemeNotifier with ChangeNotifier {
  AppThemeType? _themeType;
  AppThemeData? currentTheme;

  AppThemeNotifier() {
    switch (_themeType) {
      case AppThemeType.light:
        setThemeLight();
        break;
      case AppThemeType.dark:
        setThemeDark();
        break;
      default:
        setThemeLight();
    }
  }

  Future<void> setThemeLight() async {
    _themeType = AppThemeType.light;
    // currentTheme = _appThemeData().lightTheme;
    notifyListeners();
  }

  Future<void> setThemeDark() async {
    _themeType = AppThemeType.dark;
    // currentTheme = _appThemeData().darkTheme;
    notifyListeners();
  }

  // AppThemeData _appThemeData() {
  //   if (Platform.isIOS) {
  //     return AppThemeDataCupertino();
  //   }

  //   return AppThemeDataMaterial();
  // }
}
