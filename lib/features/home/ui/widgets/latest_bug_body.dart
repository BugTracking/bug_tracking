import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/features/home/ui/widgets/bug_members.dart';
import 'package:flutter/material.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/widgets/custom_priority_status_container.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/features/home/data/models/bugs_response_body.dart';
class LatestBugBody extends StatelessWidget {
  final BugModel bug;
  const LatestBugBody({super.key,required this.bug});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 65.0, top: 13.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(bug.title,
                      style: AppTexts.text16OnBackgroundNunitoSansSemiBold),
                   CustomPriorityStatusContainer(
                    text: bug.status,
                    color: AppColor.bluish,
                  ),
                ],
              ),
              verticalSpace(8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Last Update on ${bug.lastUpdatedAt}",
                      style: AppTexts.text8GreyNunitoSansRegular),
                  Text("Created on ${bug.lastUpdatedAt}",
                      style: AppTexts.text8GreyNunitoSansRegular),
                ],
              ),
            ],
          ),
        ),
         Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            BugMembers(bug:bug),
          ],
        ),
      ],
    );
  }
}
