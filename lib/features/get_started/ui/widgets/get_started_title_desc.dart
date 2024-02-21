import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:flutter/material.dart';

class GetStartedTitleDescription extends StatelessWidget {
  const GetStartedTitleDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Welcome to BUG Tracker ',
          style: AppTexts.text21BlackLatoBold,
        ),
        verticalSpace(16),
        Text(
          'The best way to track your bugs.',
          style: AppTexts.text16GreyLatoRegular,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
