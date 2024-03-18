import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/router/routes.dart';
import 'package:bug_tracking/core/router/screen_args.dart';
import 'package:bug_tracking/core/style/bug_colors.dart';
import 'package:bug_tracking/core/widgets/custom_priority_status_container.dart';
import 'package:bug_tracking/features/home/data/models/bugs_response_body.dart';
import 'package:bug_tracking/features/project_bugs/ui/widgets/project_bug_body.dart';
import 'package:bug_tracking/features/project_bugs/ui/widgets/project_bug_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../project_details/logic/cubit/project_details_cubit.dart';

class ProjectBugTile extends StatelessWidget {
  final BugModel bug;
  const ProjectBugTile({super.key, required this.bug});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10.0),
      onTap: () => context
          .push(
        Routes.bugDetails,
        arguments: BugDetailsScreenArgs(
          bug.id,
          bug.title,
        ),
      )
          .then((_) {
        context
            .read<ProjectDetailsCubit>()
            .emitProjectDetailsState(bug.projectId);
      }),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProjectBugHeader(
                  bug: bug,
                ),
                verticalSpace(10.0),
                ProjectBugBody(
                  bug: bug,
                ),
              ],
            ),
          ),
          Positioned(
            top: -15,
            right: 0,
            child: Row(
              children: [
                CustomPriorityStatusContainer(
                  text: bug.status,
                  color: getBugStatusColor(bug.status),
                ),
                horizontalSpace(10.0),
                CustomPriorityStatusContainer(
                  text: bug.priority,
                  color: getPriorityOrSevertyColor(bug.priority),
                ),
                horizontalSpace(10.0),
                CustomPriorityStatusContainer(
                  text: bug.severity,
                  color: getPriorityOrSevertyColor(bug.severity),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
