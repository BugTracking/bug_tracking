import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/features/home/data/models/bugs_response_body.dart';
import 'package:bug_tracking/features/project_bugs/ui/widgets/project_bugs_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectBugsScreen extends StatelessWidget {
  final List<BugModel> bugs;
  final String projectTitle;
  const ProjectBugsScreen({
    super.key,
    required this.bugs,
    required this.projectTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(projectTitle),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              size: 35,
              color: AppColor.bluish,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.0.w,
          vertical: 20.0.h,
        ),
        child: ProjectBugsList(
          bugs: bugs,
        ),
      ),
    );
  }
}
