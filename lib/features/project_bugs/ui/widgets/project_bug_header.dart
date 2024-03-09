import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/features/home/data/models/bugs_response_body.dart';
import 'package:flutter/material.dart';

class ProjectBugHeader extends StatelessWidget {
  final BugModel bug;
  const ProjectBugHeader({super.key, required this.bug});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                bug.title,
                style: AppTexts.text14OnBackgroundCairoSemiBold,
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${bug.category.title} Category',
              style: AppTexts.text12GreyNunitoSansSemiBold,
            ),
            verticalSpace(3.0),
            Text(
              'Reporter : ${bug.creator.name.toShortcut()}',
              style: AppTexts.text12GreyNunitoSansSemiBold,
            ),
          ],
        ),
      ],
    );
  }
}
