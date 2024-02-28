import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/features/allprojects/ui/widgets/project_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class AllProjectsScreen extends StatelessWidget {
  const AllProjectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              color: AppColor.blackish,
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
        child: const ProjectList(),
      ),
    );
  }
}
