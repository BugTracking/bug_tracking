import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/core/widgets/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DugDateScreen extends StatelessWidget {
  final String Date;
  final String DateName;
  const DugDateScreen({super.key, required this.Date, required this.DateName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(DateName, style: AppTexts.text16PrimaryNunitoSansBold),
            Spacer(),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.date_range_rounded,
                  color: AppColor.semiLightGreyish,
                  size: 30.0,
                ))
          ],
        ),
        Padding(
          padding: EdgeInsets.only(right: 200.0.w),
          child: Text(
            Date,
            style: AppTexts.text16OnBackgroundNunitoSansSemiBold,
            textAlign: TextAlign.start,
          ),
        ),
        const CustomDivider(),
      ],
    );
  }
}
