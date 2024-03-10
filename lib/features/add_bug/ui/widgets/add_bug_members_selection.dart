import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/widgets/custom_button.dart';
import 'package:bug_tracking/core/widgets/custom_member.dart';
import 'package:bug_tracking/features/home/data/models/user_response_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddBugMembersSelection extends StatelessWidget {
  final List<UserModel> members;
  final List<String> memberIds;
  final Function(UserModel) onChanged;
  const AddBugMembersSelection({
    super.key,
    required this.members,
    required this.onChanged,
    required this.memberIds,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.h,
      padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 16.0.h),
      child: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Expanded(
                      child: CustomMember(
                        image: members[index].avatar,
                        name: members[index].name,
                        body: members[index].role,
                      ),
                    ),
                    Checkbox(
                      value: memberIds.contains(members[index].id),
                      onChanged: (value) {
                        onChanged(members[index]);
                      },
                    ),
                  ],
                );
              },
              separatorBuilder: (context, index) => verticalSpace(10.0),
              itemCount: members.length,
            ),
          ),
          verticalSpace(8.0),
          CustomButton(
            onPressed: () => context.pop(),
            text: 'Save',
          )
        ],
      ),
    );
  }
}
