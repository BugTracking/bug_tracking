import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/features/project_bugs/ui/widgets/project_bugs_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectBugsScreen extends StatelessWidget {
  const ProjectBugsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drug App'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              color: AppColor.bluish,
              size: 35,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.0.w,
          vertical: 20.0.h,
        ),
        child: const ProjectBugsList(),
      ),
    );
  }
}
