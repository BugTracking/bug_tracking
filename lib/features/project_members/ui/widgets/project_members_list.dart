import 'package:bug_tracking/features/project_members/ui/widgets/project_members_tile.dart';
import 'package:flutter/material.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
class ProjectMembersList extends StatelessWidget {
  const ProjectMembersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.separated(
        itemBuilder: (context, index) {
          return const ProjectMembersTile();
        },
        clipBehavior: Clip.none,
        separatorBuilder: (context, index) => verticalSpace(20.0),
        shrinkWrap: true,
        itemCount: 4,
      ),
    );
  }
}
