import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/features/project_members/ui/widgets/project_members_list.dart';
import 'package:bug_tracking/features/project_members/ui/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectMembersScreen extends StatelessWidget {
  const ProjectMembersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Members'),
        actions: [
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.add,color: AppColor.bluish,),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.0.w,
          vertical: 20.0.h,
        ),
        child:  SingleChildScrollView(
          child: Column(
            children: [
               const SearchWidget(),
               verticalSpace(10),
               const ProjectMembersList(),
            ],
          ),
        ),
      ),


    );
  }
}
