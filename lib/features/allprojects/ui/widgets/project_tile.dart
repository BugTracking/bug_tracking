import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/features/allprojects/ui/widgets/project_body.dart';
import 'package:flutter/material.dart';

class ProjectTile extends StatelessWidget {
  const ProjectTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
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
              //const ProjectHeader(),
              const ProjectBody(),


              verticalSpace(10.0),
             // const ProjectBugBody(),
            ],
          ),
        ),

      ],
    );
  }
}
