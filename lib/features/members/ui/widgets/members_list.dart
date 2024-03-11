import 'package:bug_tracking/features/home/data/models/user_response_body.dart';
import 'package:bug_tracking/features/members/ui/widgets/members_tile.dart';
import 'package:flutter/material.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';

class MembersList extends StatelessWidget {
  final List<UserModel> members;
  const MembersList({
    Key? key,
    required this.members,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.separated(
        itemBuilder: (context, index) {
          final UserModel member = members[index];
          return MembersTile(members: member);
        },
        clipBehavior: Clip.none,
        separatorBuilder: (context, index) => verticalSpace(20.0),
        shrinkWrap: true,
        itemCount: members.length,
      ),
    );
  }
}
