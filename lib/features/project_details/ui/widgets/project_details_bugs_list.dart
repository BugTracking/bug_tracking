import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/features/project_bugs/ui/widgets/project_bug_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectDetailsBugsList extends StatelessWidget {
  const ProjectDetailsBugsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.h,
      clipBehavior: Clip.none,
      width: double.infinity,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        clipBehavior: Clip.none,
        itemBuilder: (context, index) => SizedBox(
          width: 300.w,
          child: const ProjectBugTile(),
        ),
        separatorBuilder: (context, index) => horizontalSpace(5.0),
        itemCount: 4,
      ),
    );
  }
}
