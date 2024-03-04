import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/features/allbugs/ui/widgets/bugs_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllBugsScreen extends StatelessWidget {
  const AllBugsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bugs'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings_input_component_outlined,
              color: AppColor.blackish,
              size: 25,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.0.w,
          vertical: 20.0.h,
        ),
        child: const BugsList(),
      ),
    );
  }
}
