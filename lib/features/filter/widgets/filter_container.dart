import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterContainer extends StatefulWidget {
  final String text;
  const FilterContainer({
    super.key,
    required this.text,
  });

  @override
  State<FilterContainer> createState() => _FilterContainerState();
}

class _FilterContainerState extends State<FilterContainer> {
  Color _containerColor = AppColor.lightGrey;
  Color _textColor = AppColor.greyish;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _containerColor = const Color.fromARGB(179, 235, 224, 224);
          _textColor = AppColor.bluish;
        });
      },
      child: Row(
        children: [
          Container(
            width: 78.0.w,
            height: 34.h,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                  Radius.circular(20.0)), // Making the container circular
              color: _containerColor,
            ),
            child: Center(
                child: Text(
              widget.text,
              style: AppTexts.text14OnBackgroundCairoSemiBold
                  .copyWith(color: _textColor),
            )),
          ),
          horizontalSpace(10.0)
        ],
      ),
    );
  }
}
