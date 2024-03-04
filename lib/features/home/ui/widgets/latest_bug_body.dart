import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/features/home/ui/widgets/bug_members.dart';
import 'package:flutter/material.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/widgets/custom_priority_status_container.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';

class LatestBugBody extends StatelessWidget {
  const LatestBugBody({Key? key}) : super(key: key);

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
                  Text("Drug App",
                      style: AppTexts.text16OnBackgroundNunitoSansSemiBold),
                  const CustomPriorityStatusContainer(
                    text: 'Done',
                    color: AppColor.bluish,
                  ),
                ],
              ),
              verticalSpace(8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Last Update on 20 Jun",
                      style: AppTexts.text8GreyNunitoSansRegular),
                  Text("Created on 10 May",
                      style: AppTexts.text8GreyNunitoSansRegular),
                ],
              ),
            ],
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            BugMembers(),
          ],
        ),
      ],
    );
  }
}
