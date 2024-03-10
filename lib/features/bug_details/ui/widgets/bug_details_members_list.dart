import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/widgets/custom_member.dart';
import 'package:flutter/material.dart';

class BugDetailsMembersList extends StatelessWidget {
  const BugDetailsMembersList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) => const CustomMember(
        image: null,
        name: 'Mohammed Adel',
        body: 'Software Engineer',
      ),
      separatorBuilder: (context, index) => verticalSpace(8.0),
      itemCount: 2,
    );
  }
}
