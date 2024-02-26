import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/features/project_bugs/ui/widgets/project_bug_tile.dart';
import 'package:flutter/material.dart';

class ProjectDetailsBugsList extends StatelessWidget {
  const ProjectDetailsBugsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.width * 0.44,
      clipBehavior: Clip.none,
      width: double.infinity,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        clipBehavior: Clip.none,
        itemBuilder: (context, index) => SizedBox(
          width: context.width * 0.8,
          child: const ProjectBugTile(),
        ),
        separatorBuilder: (context, index) => horizontalSpace(5.0),
        itemCount: 4,
      ),
    );
  }
}
