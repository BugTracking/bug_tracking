import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPriorityStatusContainer extends StatelessWidget {
  final String text;
  final Color color;
  const CustomPriorityStatusContainer(
      {super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      padding: EdgeInsets.symmetric(horizontal: 8.0.w),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: color,
      ),
      child: Text(
        text,
        style: AppTexts.text10OnPrimaryNunitoSansBold,
      ),
    );
  }
}
