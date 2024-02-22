import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color? color;
  final Color? textColor;
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.color = AppColor.bluish,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45.0.h,
      child: MaterialButton(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
          side: const BorderSide(
            color: AppColor.bluish,
          ),
        ),
        color: color,
        child: Text(
          text,
          style: textColor == Colors.white
              ? AppTexts.text16WhiteNunitoSansBold
              : AppTexts.text16BlueNunitoSansBold,
        ),
      ),
    );
  }
}
