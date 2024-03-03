import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/widgets/custom_button.dart';
import 'package:bug_tracking/core/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterButtons extends StatelessWidget {
  const FilterButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 80.0.h),
      child: Row(
       crossAxisAlignment: CrossAxisAlignment.end,
        
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
              width: 150.0.w,
              child: CustomOutlinedButton(
                text: 'Reset',
                onPressed: () {},
              )),
          horizontalSpace(10.0.w),
          SizedBox(
              width: 150.0.w,
              child: CustomButton(
                text: 'Apply',
                onPressed: () {},
              )),
        ],
      ),
    );
  }
}
