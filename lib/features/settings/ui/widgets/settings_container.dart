import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsContainer extends StatelessWidget {
  final String text;
  final Color? color;
  final IconData? icon;
  final VoidCallback onTap;
  const SettingsContainer({
    super.key,
    required this.text,
    this.color,
    this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 56.h,
          decoration: BoxDecoration(
            color: AppColor.lightGrey,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: InkWell(
            onTap: onTap,
            radius: 10,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                  child: Text(
                    text,
                    style: color != null
                        ? AppTexts.text14OnBackgroundCairoSemiBold
                            .copyWith(color: color)
                        : AppTexts.text14OnBackgroundCairoSemiBold,
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 10.0.w),
                  child: Icon(
                    icon,
                    size: 20.0,
                    color: AppColor.blackish,
                  ),
                ),
              ],
            ),
          ),
        ),
        verticalSpace(
          10.0,
        ),
      ],
    );
  }
}
