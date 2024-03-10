import 'package:bug_tracking/core/widgets/custom_project_bug_container.dart';

import 'package:bug_tracking/features/home/data/models/bugs_response_body.dart';
import 'package:flutter/material.dart';

class BugsTile extends StatelessWidget {
  final BugModel bug;
  const BugsTile({Key? key, required this.bug}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomProjectBugContainer(
        title: bug.title,
        lastUpdateAt: bug.lastUpdatedAt,
        status: bug.status,
        createdOn: bug.timeCreated,
        creator: bug.creator.name,
        lastUpdatedBy: bug.lastUpdatedBy.name,
        isProject: false);
  }
}
