import 'package:bug_tracking/core/widgets/custom_project_info_text.dart';
import 'package:bug_tracking/features/project_details/ui/widgets/project_details_app_bar_title.dart';
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
        child: const Column(
          children: [
            CustomProjectInfo(),
          ],
        ),
      ),
    );
  }
}
