import 'package:flutter/cupertino.dart'
    show CupertinoThemeData, CupertinoColors;
import 'package:flutter/material.dart'
    show ThemeData, Colors, Color, ColorScheme;
import 'package:flutter/services.dart';

class AppThemeDataMaterial {
  static AppThemeDataMaterial instance = AppThemeDataMaterial._();

  AppThemeDataMaterial._();

  ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: Colors.black,
    backgroundColor: const Color(0xFF212121),
    colorScheme: ColorScheme.fromSwatch()
        .copyWith(secondary: Colors.white, brightness: Brightness.dark),
    // accentIconTheme: const IconThemeData(color: Colors.black),
    dividerColor: Colors.black12,
  );

  ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: Colors.white,
    backgroundColor: const Color(0xFFE5E5E5),
    colorScheme: ColorScheme.fromSwatch()
        .copyWith(secondary: Colors.black, brightness: Brightness.light),
    // accentIconTheme: const IconThemeData(color: Colors.white),
    dividerColor: Colors.white54,
  );
}

class AppThemeDataCupertino {
  static AppThemeDataCupertino instance = AppThemeDataCupertino._();

  AppThemeDataCupertino._();

  CupertinoThemeData darkTheme = const CupertinoThemeData(
    primaryColor: CupertinoColors.black,
    brightness: Brightness.dark,
  );

  CupertinoThemeData lightTheme = const CupertinoThemeData(
    primaryColor: CupertinoColors.white,
    brightness: Brightness.light,
  );
}
