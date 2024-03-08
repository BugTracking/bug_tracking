import 'package:bug_tracking/core/router/screen_args.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/widgets/custom_priority_status_container.dart';
import 'package:bug_tracking/core/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

class ProjectDetailsAppBarTitle extends StatelessWidget {
  final ProjectDetailsScreenArgs args;
  const ProjectDetailsAppBarTitle({super.key, required this.args});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(args.projectTitle),
              const SizedBox(width: 8),
              CustomPriorityStatusContainer(
                text: args.projectStatus,
                color: getProjectStatusColor(args.projectStatus),
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
