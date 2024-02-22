import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/features/project_bugs/ui/widgets/project_bug_body.dart';
import 'package:bug_tracking/features/project_bugs/ui/widgets/project_bug_header.dart';
import 'package:flutter/material.dart';

class ProjectBugTile extends StatelessWidget {
  const ProjectBugTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xffE9EAEC),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            children: [
              const ProjectBugHeader(),
              verticalSpace(10.0),
              const ProjectBugBody(),
            ],
          ),
        ),
      ],
    );
  }
}
