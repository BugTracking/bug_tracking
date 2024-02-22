import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:flutter/material.dart';

class OnBoardingTitleDescription extends StatelessWidget {
  final String title;
  final String description;
  const OnBoardingTitleDescription({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: AppTexts.text21BlackNunitoSansBold,
        ),
        verticalSpace(16),
        Text(
          description,
          style: AppTexts.text16GreyNunitoSansRegular,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
