import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/features/bug_details/ui/widgets/bug_details.attachment_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BugDetailsAttachmentsList extends StatelessWidget {
  const BugDetailsAttachmentsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 140.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const BugDetailesAttachmentsTile(),
        separatorBuilder: (context, index) => horizontalSpace(5.0),
        itemCount: 10,
      ),
    );
  }
}
