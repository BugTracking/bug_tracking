import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectedItems extends StatelessWidget {
  final List<String> items;
  final Function(int) onClosePressed;
  const SelectedItems({
    super.key,
    required this.items,
    required this.onClosePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: 5.h,
        horizontal: 16.0.w,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey[300]!,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: 90.h),
        child: SingleChildScrollView(
          child: Wrap(
            spacing: 8.0,
            children: List.generate(
              items.length,
              (index) => Container(
                padding: EdgeInsets.only(
                  right: 8.0.w,
                  left: 3.w,
                  top: 8.h,
                  bottom: 8.h,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xffF8F8F8),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                margin: EdgeInsets.symmetric(vertical: 5.h),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () => onClosePressed(index),
                      child: const Icon(
                        Icons.close,
                        color: AppColor.grayWithScale,
                      ),
                    ),
                    horizontalSpace(5),
                    Text(
                      items[index],
                      style: AppTexts.text12BlackSFProBold,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
