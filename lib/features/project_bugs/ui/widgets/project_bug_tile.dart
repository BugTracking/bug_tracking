import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/router/routes.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/widgets/custom_priority_status_container.dart';
import 'package:bug_tracking/features/project_bugs/ui/widgets/project_bug_body.dart';
import 'package:bug_tracking/features/project_bugs/ui/widgets/project_bug_header.dart';
import 'package:flutter/material.dart';

class ProjectBugTile extends StatelessWidget {
  const ProjectBugTile({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10.0),
      onTap: () => context.push(Routes.bugDetails),
      child: Stack(
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
                const ProjectBugHeader(),
                verticalSpace(10.0),
                const ProjectBugBody(),
              ],
            ),
          ),
          Positioned(
            top: -15,
            right: 0,
            child: Row(
              children: [
                const CustomPriorityStatusContainer(
                  text: 'To DO',
                  color: AppColor.bluish,
                ),
                horizontalSpace(10.0),
                const CustomPriorityStatusContainer(
                  text: 'High Priority',
                  color: Colors.red,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
