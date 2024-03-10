import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/features/allbugs/ui/widgets/bugs_list.dart';
import 'package:bug_tracking/features/filter/screen/bug_filter_screen.dart';
import 'package:bug_tracking/features/home/data/models/bugs_response_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllBugsScreen extends StatelessWidget {
  final List<BugModel> bugs;
  const AllBugsScreen({Key? key, required this.bugs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bugs'),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) => const BugFilterScreen(),
              );
            },
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
        child:  BugsList(bugs: bugs,),
      ),
    );
  }
}
