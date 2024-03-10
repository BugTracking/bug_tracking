import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/core/widgets/custom_member.dart';
import 'package:bug_tracking/features/home/data/models/user_response_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectDetailsMembers extends StatelessWidget {
  final List<UserModel> members;
  const ProjectDetailsMembers({super.key, required this.members});

  @override
  Widget build(BuildContext context) {
    if (members.isEmpty) {
      return Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0.h),
          child: Text(
            'No Members added yet',
            style: AppTexts.text16OnBackgroundNunitoSansBold,
          ),
        ),
      );
    }
    return ListView.separated(
      itemBuilder: (context, index) => CustomMember(
        image: members[index].avatar,
        name: members[index].name,
        body: members[index].email,
      ),
      separatorBuilder: (context, index) => verticalSpace(8.0),
      itemCount: members.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}
