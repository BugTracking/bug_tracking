import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/features/project_bugs/ui/widgets/project_bug_tile.dart';
import 'package:bug_tracking/features/project_details/data/models/project_details_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectDetailsBugsList extends StatelessWidget {
  final List<BugModel> bugs;
  const ProjectDetailsBugsList({super.key, required this.bugs});

  @override
  Widget build(BuildContext context) {
    if (bugs.isEmpty) {
      return Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0.h),
          child: Text(
            'No Bugs Submitted yet',
            style: AppTexts.text16OnBackgroundNunitoSansBold,
          ),
        ),
      );
    }
    return Container(
      height: 140.h,
      clipBehavior: Clip.none,
      width: double.infinity,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        clipBehavior: Clip.none,
        itemBuilder: (context, index) {
          int reverseIndex = bugs.length - 1 - index;
          return SizedBox(
            width: 300.w,
            child: ProjectBugTile(bug: bugs[reverseIndex]),
          );
        },
        separatorBuilder: (context, index) => horizontalSpace(5.0),
        itemCount: bugs.length > 3 ? 3 : bugs.length,
      ),
    );
  }
}
