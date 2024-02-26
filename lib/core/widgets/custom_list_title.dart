import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/core/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListTitle extends StatelessWidget {
  final VoidCallback? onPressed;
  final String title;
  const CustomListTitle({
    super.key,
    this.onPressed,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0.h),
      child: Row(
        children: [
          Text(
            title,
            style: AppTexts.text16OnBackgroundNunitoSansBold,
          ),
          const Spacer(),
          if (onPressed != null)
            CustomTextButton(onPressed: onPressed ?? () {}, text: 'View All'),
        ],
      ),
    );
  }
}
