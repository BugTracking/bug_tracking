import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/router/routes.dart';
import 'package:bug_tracking/core/router/screen_args.dart';
import 'package:bug_tracking/core/widgets/custom_project_bug_container.dart';
import 'package:flutter/material.dart';
import 'package:bug_tracking/features/home/data/models/project_response_body.dart';

class LatestProjectBody extends StatelessWidget {
  final ProjectModel project;
  const LatestProjectBody({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10.0),
      onTap: () => context.push(
        Routes.projectDetails,
        arguments: ProjectDetailsScreenArgs(
          project.id,
          project.title,
          project.status,
        ),
      ),
      child: CustomProjectBugContainer(
        title: project.title,
        lastUpdateAt: project.lastUpdatedAt,
        status: project.status,
        createdOn: project.timeCreated,
        creator: project.creator.name,
        lastUpdatedBy: project.lastUpdatedBy.name,
        isProject: true,
      ),
    );
  }
}
