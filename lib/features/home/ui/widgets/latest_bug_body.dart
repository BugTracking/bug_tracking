import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/widgets/custom_priority_status_container.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/features/home/data/models/bugs_response_body.dart';
import 'package:flutter/widgets.dart';

class LatestBugBody extends StatelessWidget {
  final BugModel bug;
  const LatestBugBody({super.key, required this.bug});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(bug.title,
                  style: AppTexts.text16OnBackgroundNunitoSansSemiBold),
              Text("Last Update on ${bug.lastUpdatedAt.extractDate()}",
                  style: AppTexts.text8GreyNunitoSansRegular),
            ],
          ),
        ),
        verticalSpace(8.0),
        Column(
          children: [
            CustomPriorityStatusContainer(
              text: bug.status,
              color: AppColor.bluish,
            ),
            Text("Created on ${bug.timeCreated.extractDate()}",
                style: AppTexts.text8GreyNunitoSansRegular),
          ],
        ),
        //BugMembers(bug:bug),
      ],
    );
  }
}
