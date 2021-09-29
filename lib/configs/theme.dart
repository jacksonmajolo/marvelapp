import 'dart:ui';

import 'package:flutter/cupertino.dart'
    show CupertinoThemeData, CupertinoColors;
import 'package:flutter/material.dart' show ThemeData, IconThemeData, Colors;

enum AppThemes { DARK, LIGHT, SYSTEM }

class AppMaterialThemeData {
  final ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: Colors.black,
    brightness: Brightness.dark,
    backgroundColor: Color(0xFF212121),
    accentColor: Colors.white,
    accentIconTheme: IconThemeData(color: Colors.black),
    dividerColor: Colors.black12,
  );

  final ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: Colors.white,
    brightness: Brightness.light,
    backgroundColor: Color(0xFFE5E5E5),
    accentColor: Colors.black,
    accentIconTheme: IconThemeData(color: Colors.white),
    dividerColor: Colors.white54,
  );
}

class AppCupertinoThemeData {
  final CupertinoThemeData darkTheme = CupertinoThemeData(
    primaryColor: CupertinoColors.black,
    brightness: Brightness.dark,
  );

  final CupertinoThemeData lightTheme = CupertinoThemeData(
    primaryColor: CupertinoColors.white,
    brightness: Brightness.light,
  );
}
