import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectedMembers extends StatelessWidget {
  const SelectedMembers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 45.0.h,
      padding: EdgeInsets.symmetric(
        vertical: 5.h,
        horizontal: 16.0.w,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColor.lightGrey,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          padding: EdgeInsets.only(right: 8.0.w),
          decoration: BoxDecoration(
            color: AppColor.lightGrey,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.close,
                  color: AppColor.grayWithScale,
                ),
              ),
              Text(
                'Mohammed Adel',
                style: AppTexts.text12BlackSFProBold,
              ),
            ],
          ),
        ),
        separatorBuilder: (context, index) => horizontalSpace(5.0),
        itemCount: 5,
      ),
    );
  }
}
