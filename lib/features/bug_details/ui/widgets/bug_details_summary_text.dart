import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:flutter/material.dart';

class BugDetailsSummaryText extends StatelessWidget {
  const BugDetailsSummaryText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Summary',
      style: AppTexts.text16OnBackgroundNunitoSansBold,
    );
  }
}
