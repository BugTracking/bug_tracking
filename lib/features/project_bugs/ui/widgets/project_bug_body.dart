import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/features/home/data/models/bugs_response_body.dart';
import 'package:flutter/material.dart';

class ProjectBugBody extends StatelessWidget {
  final BugModel bug;
  const ProjectBugBody({super.key, required this.bug});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: Text(
            bug.description,
            maxLines: 3,
            style: AppTexts.text14GreyCairoSemiBold.copyWith(height: 1.3),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        horizontalSpace(5.0),
        CircleAvatar(
          backgroundColor: const Color(0xffD9D9D9),
          radius: 16,
          child: Text(
            bug.lastUpdatedBy.name.toShortcutEachWord(),
            style: AppTexts.text10PrimaryNunitoSansSemiBold,
          ),
        )
      ],
    );
  }
}
