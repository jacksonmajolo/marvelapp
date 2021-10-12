import 'dart:ui';

import 'package:flutter/cupertino.dart'
    show CupertinoThemeData, CupertinoColors;
import 'package:flutter/material.dart' show ThemeData, IconThemeData, Colors;

enum AppThemes { dark, light, system }

class AppMaterialThemeData {
  final ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: Colors.black,
    brightness: Brightness.dark,
    backgroundColor: const Color(0xFF212121),
    accentColor: Colors.white,
    accentIconTheme: const IconThemeData(color: Colors.black),
    dividerColor: Colors.black12,
  );

  final ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: Colors.white,
    brightness: Brightness.light,
    backgroundColor: const Color(0xFFE5E5E5),
    accentColor: Colors.black,
    accentIconTheme: const IconThemeData(color: Colors.white),
    dividerColor: Colors.white54,
  );
}

class AppCupertinoThemeData {
  final CupertinoThemeData darkTheme = const CupertinoThemeData(
    primaryColor: CupertinoColors.black,
    brightness: Brightness.dark,
  );

  final CupertinoThemeData lightTheme = const CupertinoThemeData(
    primaryColor: CupertinoColors.white,
    brightness: Brightness.light,
  );
}
