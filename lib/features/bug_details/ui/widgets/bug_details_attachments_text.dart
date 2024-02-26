import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BugDetailsAttachmentsText extends StatelessWidget {
  const BugDetailsAttachmentsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0.h),
      child: Row(
        children: [
          Text(
            'Attachments',
            style: AppTexts.text16OnBackgroundNunitoSansBold,
          ),
          horizontalSpace(3),
          Text(
            '3',
            style: AppTexts.text16PrimaryNunitoSansBold,
          ),
        ],
      ),
    );
  }
}
