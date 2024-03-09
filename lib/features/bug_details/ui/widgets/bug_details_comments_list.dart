import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/widgets/custom_member.dart';
import 'package:flutter/material.dart';

class BugDetailsCommentsList extends StatelessWidget {
  const BugDetailsCommentsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => const CustomMember(
        image: null,
        name: 'Mohammed Adel ',
        body:
            'Lorem Ipsum is simply dummy text of the printing. Lorem Ipsum is simply dummy text of the printing.',
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => verticalSpace(5.0),
      padding: EdgeInsets.zero,
      itemCount: 2,
    );
  }
}
