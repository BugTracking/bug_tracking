import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/widgets/custom_divider.dart';
import 'package:bug_tracking/core/widgets/custom_list_title.dart';
import 'package:bug_tracking/core/widgets/custom_project_info_text.dart';
import 'package:bug_tracking/features/project_details/ui/widgets/project_details_app_bar_title.dart';
import 'package:bug_tracking/features/project_details/ui/widgets/project_details_bugs_list.dart';
import 'package:bug_tracking/features/project_details/ui/widgets/project_details_members.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectDetailsScreen extends StatelessWidget {
  const ProjectDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const ProjectDetailsAppBarTitle(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0.h, horizontal: 10.0.w),
        child: Column(
          children: [
            const CustomProjectInfo(),
            verticalSpace(10.0),
            const CustomDivider(),
            CustomListTitle(
              onPressed: () {},
              title: 'Bugs',
            ),
            verticalSpace(10.0),
            const ProjectDetailsBugsList(),
            CustomListTitle(
              onPressed: () {},
              title: 'Members',
            ),
            const Expanded(
              child: ProjectDetailsMembers(),
            ),
          ],
        ),
      ),
    );
  }
}
