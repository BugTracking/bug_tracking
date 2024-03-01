import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomOutlinedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double? width;

  const CustomOutlinedButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:width?? double.infinity,
      height: 45.0.h,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          animationDuration: const Duration(milliseconds: 300),
          foregroundColor: AppColor.greyish,
          side: const BorderSide(
            color: Colors.blue,
            style: BorderStyle.solid,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        child: Text(
          text,
          style: AppTexts.text16PrimaryNunitoSansBold,
        ),
      ),
    );
  }
}
