import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/router/routes.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/core/widgets/custom_text_button.dart';
import 'package:bug_tracking/features/home/ui/widgets/latest_bugs_list.dart';
import 'package:flutter/material.dart';

class LatestBugs extends StatelessWidget {
  const LatestBugs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Latest Bugs',
              style: AppTexts.text16OnBackgroundNunitoSansBold,
            ),
            CustomTextButton(
                onPressed: () => context.push(
                      Routes.allBugs,
                    ),
                text: 'View All'),
          ],
        ),
        verticalSpace(5),
        const LatestBugsList(),
      ],
    );
  }
}
