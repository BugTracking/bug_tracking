import 'package:flutter/material.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/features/allprojects/ui/widgets/project_tile.dart';
class ProjectList extends StatelessWidget {
  const ProjectList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.separated(
        itemBuilder: (context, index) {
          return const ProjectTile();
        },
        clipBehavior: Clip.none,
        separatorBuilder: (context, index) => verticalSpace(20.0),
        shrinkWrap: true,
        itemCount: 10,
      ),
    );
  }
}
