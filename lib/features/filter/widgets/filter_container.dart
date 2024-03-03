import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterContainer extends StatefulWidget {
  final String text;
  final bool isSelected;
  const FilterContainer({
    super.key,
    required this.text,
    required this.isSelected,
  });

  @override
  State<FilterContainer> createState() => _FilterContainerState();
}

class _FilterContainerState extends State<FilterContainer> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            vertical: 10.0.h,
            horizontal: 10.0.w,
          ),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(20.0),
            ),
            color: widget.isSelected
                ? const Color(0xffF4FAFF)
                : AppColor.lightGrey,
          ),
          child: Center(
            child: Text(
              widget.text,
              style: AppTexts.text14OnBackgroundCairoSemiBold.copyWith(
                color: widget.isSelected ? AppColor.bluish : AppColor.greyish,
              ),
            ),
          ),
        ),
        horizontalSpace(10.0)
      ],
    );
  }
}
