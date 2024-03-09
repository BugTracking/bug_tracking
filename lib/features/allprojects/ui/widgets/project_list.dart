import 'package:flutter/material.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/features/allprojects/ui/widgets/project_tile.dart';
import '../../../home/data/models/project_response_body.dart';

class ProjectList extends StatelessWidget {
  final List<ProjectModel> projects;
  const ProjectList({super.key, required this.projects});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.separated(
        itemBuilder: (context, index) {
          ProjectModel project = projects[index];
          return ProjectTile(project: project);
        },
        clipBehavior: Clip.none,
        separatorBuilder: (context, index) => verticalSpace(20.0),
        shrinkWrap: true,
        itemCount: projects.length,
      ),
    );
  }
}
