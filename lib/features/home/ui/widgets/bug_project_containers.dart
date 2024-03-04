import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BugProjectContainers extends StatelessWidget {
  const BugProjectContainers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 87.h,
          width: 166.5.w,
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColor.bluish,
              width: 0.9,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '3',
                style: AppTexts.text14PrimaryNunitoSansBold,
              ),
              Text(
                'Projects',
                style: AppTexts.text14OnBackgroundCairoSemiBold,
              ),
            ],
          ),
        ),
        horizontalSpace(10),
        Container(
          height: 87.h,
          width: 166.5.w,
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColor.bluish,
              width: 0.9,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '500',
                style: AppTexts.text14PrimaryNunitoSansBold,
              ),
              Text(
                'Bugs',
                style: AppTexts.text14OnBackgroundCairoSemiBold,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
