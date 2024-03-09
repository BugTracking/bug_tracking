import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/router/routes.dart';
import 'package:bug_tracking/features/home/data/models/bugs_response_body.dart';
import 'package:bug_tracking/features/home/ui/widgets/latest_bug_body.dart';

import 'package:flutter/material.dart';

class LatestBugTile extends StatelessWidget {
  final BugModel bug;
  const LatestBugTile({super.key,required this.bug});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.push(Routes.bugDetails),
      borderRadius: BorderRadius.circular(10.0),
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
            child:  LatestBugBody(bug:bug),
          ),
        ],
      ),
    );
  }
}
