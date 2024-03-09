import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/features/home/data/models/bugs_response_body.dart';
import 'package:bug_tracking/features/project_bugs/ui/widgets/project_bug_tile.dart';
import 'package:flutter/material.dart';

class ProjectBugsList extends StatelessWidget {
  final List<BugModel> bugs;
  const ProjectBugsList({super.key, required this.bugs});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.separated(
        itemBuilder: (context, index) {
          return ProjectBugTile(
            bug: bugs[index],
          );
        },
        clipBehavior: Clip.none,
        separatorBuilder: (context, index) => verticalSpace(20.0),
        shrinkWrap: true,
        itemCount: bugs.length,
      ),
    );
  }
}
