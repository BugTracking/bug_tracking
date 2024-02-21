import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
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
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: const IconThemeData(color: AppColor.blackish),
      titleTextStyle: AppTexts.text21BlackLatoBold,
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
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.white),
      titleTextStyle: AppTexts.text21WhiteLatoBold,
    ),
  );
}
