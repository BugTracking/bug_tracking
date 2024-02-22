import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/font_weight.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTexts {
  AppTexts._();

  static TextStyle get text21BlackNunitoSansBold => GoogleFonts.nunitoSans(
        fontSize: 21.sp,
        fontWeight: AppFontWeight.bold,
        color: AppColor.blackish,
      );

  static TextStyle get text21WhiteNunitoSansBold => GoogleFonts.nunitoSans(
        fontSize: 21.sp,
        fontWeight: AppFontWeight.bold,
        color: Colors.white,
      );

  static TextStyle get text16WhiteNunitoSansBold => GoogleFonts.nunitoSans(
        fontSize: 16.sp,
        fontWeight: AppFontWeight.bold,
        color: Colors.white,
      );

  static TextStyle get text16BlueNunitoSansBold => GoogleFonts.nunitoSans(
        fontSize: 16.sp,
        fontWeight: AppFontWeight.bold,
        color: AppColor.bluish,
      );

  static TextStyle get text12BlueNunitoSansBold => GoogleFonts.nunitoSans(
        fontSize: 12.sp,
        fontWeight: AppFontWeight.bold,
        color: AppColor.bluish,
      );
  static TextStyle get text16GreyNunitoSansRegular => GoogleFonts.nunitoSans(
        fontSize: 14.sp,
        fontWeight: AppFontWeight.regular,
        color: AppColor.greyish,
      );
}
