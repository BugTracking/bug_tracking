import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsContainer extends StatefulWidget {
  final String text;
  final Color? color;
  final IconData? icon;

  const SettingsContainer({
    super.key,
    required this.text,
    this.color,
    this.icon,
  });

  @override
  State<SettingsContainer> createState() => _SettingsContainerState();
}

class _SettingsContainerState extends State<SettingsContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          child: Container(
            height: 56.h,
            decoration: BoxDecoration(
                color: AppColor.lightGrey,
                borderRadius: BorderRadius.circular(10.0)),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                  child: Text(
                    widget.text,
                    style: widget.color != null
                        ? AppTexts.text14OnBackgroundCairoSemiBold
                            .copyWith(color: widget.color)
                        : AppTexts.text14OnBackgroundCairoSemiBold,
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 10.0.w),
                  child: Icon(
                    widget.icon,
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
