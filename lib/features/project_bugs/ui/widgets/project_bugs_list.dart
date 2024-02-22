import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/features/project_bugs/ui/widgets/project_bug_tile.dart';
import 'package:flutter/material.dart';

class ProjectBugsList extends StatelessWidget {
  const ProjectBugsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return const ProjectBugTile();
      },
      separatorBuilder: (context, index) => verticalSpace(20.0),
      itemCount: 3,
    );
  }
}
