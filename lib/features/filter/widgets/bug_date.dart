import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/core/widgets/custom_divider.dart';
import 'package:flutter/material.dart';

class DugDate extends StatelessWidget {
  final String date;
  final String dateName;
  const DugDate({
    super.key,
    required this.date,
    required this.dateName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(dateName, style: AppTexts.text16PrimaryNunitoSansBold),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.date_range_rounded,
                color: AppColor.semiLightGreyish,
                size: 30.0,
              ),
            )
          ],
        ),
        Text(
          date,
          style: AppTexts.text16OnBackgroundNunitoSansSemiBold,
        ),
        const CustomDivider(),
      ],
    );
  }
}
