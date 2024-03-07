import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class UploadAttachments extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const UploadAttachments({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: DottedBorder(
        padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 16.0.w),
        radius: const Radius.circular(10),
        borderType: BorderType.RRect,
        color: AppColor.greyish,
        child: Column(
          children: [
            SvgPicture.asset('assets/icons/upload.svg'),
            verticalSpace(15.0),
            Text(
              title,
              style: AppTexts.text12OnBackgroundNunitoSansSemiBold,
            ),
          ],
        ),
      ),
    );
  }
}
