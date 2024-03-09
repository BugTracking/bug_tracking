import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:flutter/material.dart';

class ProjectBugsList extends StatelessWidget {
  const ProjectBugsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.separated(
        itemBuilder: (context, index) {
          //return ProjectBugTile();
          return Container();
        },
        clipBehavior: Clip.none,
        separatorBuilder: (context, index) => verticalSpace(20.0),
        shrinkWrap: true,
        itemCount: 10,
      ),
    );
  }
}
