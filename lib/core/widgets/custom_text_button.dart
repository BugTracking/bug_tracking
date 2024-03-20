import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color? textColor;
  const CustomTextButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.textColor = AppColor.bluish,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: Text(
        text,
        style: AppTexts.text14PrimaryNunitoSansBold.copyWith(
          color: textColor,
        ),
      ),
    );
  }
}
