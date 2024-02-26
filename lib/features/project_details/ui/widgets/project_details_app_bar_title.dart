import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/widgets/custom_priority_status_container.dart';
import 'package:bug_tracking/core/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

class ProjectDetailsAppBarTitle extends StatelessWidget {
  const ProjectDetailsAppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Drug App'),
              SizedBox(width: 8),
              CustomPriorityStatusContainer(
                text: 'New',
                color: AppColor.greenish,
              ),
            ],
          ),
        ),
        CustomTextButton(
          onPressed: () {},
          text: 'Edit',
        ),
      ],
    );
  }
}
