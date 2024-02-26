import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/font_weight.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTexts {
  AppTexts._();

  static TextStyle get text21OnBackgroundColorNunitoSansBold =>
      GoogleFonts.nunitoSans(
        fontSize: 21.sp,
        fontWeight: AppFontWeight.bold,
        color: AppColor.blackish,
      );

  static TextStyle get text12GreyCairoSemiBold => GoogleFonts.cairo(
        fontSize: 12.sp,
        fontWeight: AppFontWeight.semiBold,
        color: AppColor.greyish,
      );

  static TextStyle get text12OnBackgroundCairoBold => GoogleFonts.cairo(
        fontSize: 12.sp,
        fontWeight: AppFontWeight.bold,
        color: AppColor.blackish,
      );

  static TextStyle get text21OnPrimaryNunitoSansBold => GoogleFonts.nunitoSans(
        fontSize: 21.sp,
        fontWeight: AppFontWeight.bold,
        color: Colors.white,
      );

  static TextStyle get text14PrimaryNunitoSansBold => GoogleFonts.nunitoSans(
        fontSize: 14.sp,
        fontWeight: AppFontWeight.bold,
        color: AppColor.bluish,
      );

  static TextStyle get text16OnPrimaryNunitoSansBold => GoogleFonts.nunitoSans(
        fontSize: 16.sp,
        fontWeight: AppFontWeight.bold,
        color: Colors.white,
      );

  static TextStyle get text16PrimaryNunitoSansBold => GoogleFonts.nunitoSans(
        fontSize: 16.sp,
        fontWeight: AppFontWeight.bold,
        color: AppColor.bluish,
      );

  static TextStyle get text12PrimaryNunitoSansBold => GoogleFonts.nunitoSans(
        fontSize: 12.sp,
        fontWeight: AppFontWeight.bold,
        color: AppColor.bluish,
      );
  static TextStyle get text16GreyNunitoSansRegular => GoogleFonts.nunitoSans(
        fontSize: 14.sp,
        fontWeight: AppFontWeight.regular,
        color: AppColor.greyish,
      );

  static TextStyle get text16OnBackgroundNunitoSansSemiBold =>
      GoogleFonts.nunitoSans(
        fontSize: 16.sp,
        fontWeight: AppFontWeight.semiBold,
        color: AppColor.blackish,
      );

  static TextStyle get text12GreyNunitoSansSemiBold => GoogleFonts.nunitoSans(
        fontSize: 12.sp,
        fontWeight: AppFontWeight.semiBold,
        color: AppColor.greyish,
      );

  static TextStyle get text10PrimaryNunitoSansSemiBold =>
      GoogleFonts.nunitoSans(
        fontSize: 10.sp,
        fontWeight: AppFontWeight.semiBold,
        color: AppColor.bluish,
      );

  static TextStyle get text10OnPrimaryNunitoSansBold => GoogleFonts.nunitoSans(
        fontSize: 10.sp,
        fontWeight: AppFontWeight.bold,
        color: Colors.white,
      );

  static TextStyle get text14GreyCairoSemiBold => GoogleFonts.cairo(
        fontSize: 14.sp,
        fontWeight: AppFontWeight.semiBold,
        color: AppColor.greyish,
      );
}
