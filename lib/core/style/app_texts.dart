import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/font_weight.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTexts {
  AppTexts._();

  static TextStyle get text21BlackLatoBold => TextStyle(
        fontSize: 21.sp,
        fontWeight: AppFontWeight.bold,
        color: AppColor.blackish,
      );

  static TextStyle get text21WhiteLatoBold => TextStyle(
        fontSize: 21.sp,
        fontWeight: AppFontWeight.bold,
        color: Colors.white,
      );
}
