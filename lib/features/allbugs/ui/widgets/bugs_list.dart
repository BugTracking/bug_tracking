import 'package:bug_tracking/features/allbugs/ui/widgets/bugs_tile.dart';
import 'package:bug_tracking/features/home/data/models/bugs_response_body.dart';
import 'package:flutter/material.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';

class BugsList extends StatelessWidget {
  final List<BugModel> bugs;
  const BugsList({Key? key, required this.bugs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.separated(
        itemBuilder: (context, index) {
          BugModel bug = bugs[index];
          return BugsTile(
            bug: bug,
          );
        },
        clipBehavior: Clip.none,
        separatorBuilder: (context, index) => verticalSpace(20.0),
        shrinkWrap: true,
        itemCount: bugs.length,
      ),
    );
  } 
}
