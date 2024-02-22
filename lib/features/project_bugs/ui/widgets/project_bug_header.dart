import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:flutter/material.dart';

class ProjectBugHeader extends StatelessWidget {
  const ProjectBugHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bug',
                style: AppTexts.text16OnBackgroundNunitoSansSemiBold,
              ),
              verticalSpace(3.0),
              Text(
                'ID:DR1',
                style: AppTexts.text12GreyNunitoSansSemiBold,
              ),
            ],
          ),
        ),
        Column(
          children: [
            Text(
              'Log In Category',
              style: AppTexts.text12GreyNunitoSansSemiBold,
            ),
            verticalSpace(3.0),
            Text(
              'Reporter : Dalia',
              style: AppTexts.text12GreyNunitoSansSemiBold,
            ),
          ],
        ),
      ],
    );
  }
}
