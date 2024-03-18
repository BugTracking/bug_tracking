import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddContainer extends StatelessWidget {
  final String title;
  const AddContainer({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: 16.h,
        horizontal: 16.0.w,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColor.darkGreyish,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          Text(
            title,
            style: AppTexts.text14GreyNunitoSansSemiBold,
          ),
          const Spacer(),
          const Icon(
            Icons.add,
            color: AppColor.bluish,
          ),
        ],
      ),
    );
  }
}
