import 'package:bug_tracking/features/members/ui/widgets/members_tile.dart';
import 'package:flutter/material.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';

class MembersList extends StatelessWidget {
  const MembersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.separated(
        itemBuilder: (context, index) {
          return const MembersTile();
        },
        clipBehavior: Clip.none,
        separatorBuilder: (context, index) => verticalSpace(20.0),
        shrinkWrap: true,
        itemCount: 4,
      ),
    );
  }
}
