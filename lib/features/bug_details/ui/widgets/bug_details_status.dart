import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/widgets/custom_priority_status_container.dart';
import 'package:bug_tracking/features/bug_details/logic/cubit/bug_details_cubit.dart';
import 'package:bug_tracking/features/home/data/models/bugs_response_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BugDetailsStatus extends StatelessWidget {
  const BugDetailsStatus({super.key});

  @override
  Widget build(BuildContext context) {
    BugModel bugModel = context.read<BugDetailsCubit>().bugDetailsModel!.bug;
    return Row(
      children: [
        Expanded(
          child: CustomPriorityStatusContainer(
            text: bugModel.status,
            color: getBugStatusColor(
              bugModel.status,
            ),
          ),
        ),
        horizontalSpace(10.0),
        Expanded(
          child: CustomPriorityStatusContainer(
            text: bugModel.priority,
            color: getBugStatusColor(
              bugModel.priority,
            ),
          ),
        ),
        horizontalSpace(10.0),
        Expanded(
          child: CustomPriorityStatusContainer(
            text: bugModel.severity,
            color: getBugStatusColor(
              bugModel.severity,
            ),
          ),
        ),
      ],
    );
  }
}
