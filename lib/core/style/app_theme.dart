import 'package:bug_tracking/core/style/app_color.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: const ColorScheme.light(
      primary: AppColor.bluish,
      onPrimary: Colors.white,
      secondary: AppColor.organish,
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      onBackground: AppColor.blackish,
    ),
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: AppColor.blackish),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColor.blackish,
    colorScheme: const ColorScheme.dark(
      primary: AppColor.bluish,
      onPrimary: Colors.white,
      secondary: AppColor.organish,
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      onBackground: Colors.white,
    ),
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
    ),
  );
}
