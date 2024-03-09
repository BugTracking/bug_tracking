import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/features/allprojects/data/model/project_response_body.dart';
import 'package:bug_tracking/features/allprojects/ui/widgets/project_members.dart';
import 'package:flutter/material.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/widgets/custom_priority_status_container.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';

class ProjectBody extends StatelessWidget {
  final ProjectModel project;
  const ProjectBody({Key? key, required this.project}) : super(key: key);

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
                  Text(project.title,
                      style: AppTexts.text16OnBackgroundNunitoSansSemiBold),
                  CustomPriorityStatusContainer(
                    text: project.status,
                    color: getProjectStatusColor(project.status),
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
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ProjectMembers(
              project: project,
            ),
          ],
        ),
      ],
    );
  }
}
