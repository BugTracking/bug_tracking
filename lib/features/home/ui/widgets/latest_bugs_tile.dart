import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/router/routes.dart';
import 'package:bug_tracking/core/router/screen_args.dart';
import 'package:bug_tracking/core/widgets/custom_project_bug_container.dart';
import 'package:bug_tracking/features/home/data/models/bugs_response_body.dart';

import 'package:flutter/material.dart';

class LatestBugTile extends StatelessWidget {
  final BugModel bug;
  const LatestBugTile({super.key, required this.bug});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.push(
        Routes.bugDetails,
        arguments: BugDetailsScreenArgs(
          bug.id,
          bug.title,
        ),
      ),
      borderRadius: BorderRadius.circular(10.0),
      child: CustomProjectBugContainer(
        title: bug.title,
        lastUpdateAt: bug.lastUpdatedAt,
        status: bug.status,
        createdOn: bug.timeCreated,
        creator: bug.creator.name,
        lastUpdatedBy: bug.lastUpdatedBy.name,
        isProject: false,
      ),
    );
  }
}
