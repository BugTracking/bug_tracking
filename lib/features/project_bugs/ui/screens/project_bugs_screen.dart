import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/features/project_bugs/ui/widgets/project_bugs_list.dart';
import 'package:flutter/material.dart';

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
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: ProjectBugsList(),
      ),
    );
  }
}
