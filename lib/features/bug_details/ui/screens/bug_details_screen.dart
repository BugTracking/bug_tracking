import 'package:bug_tracking/core/widgets/custom_text_button.dart';
import 'package:bug_tracking/features/bug_details/ui/widgets/bug_details_attachments_list.dart';
import 'package:bug_tracking/features/bug_details/ui/widgets/bug_details_attachments_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BugDetailsScreen extends StatelessWidget {
  const BugDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bug Details'),
        actions: [
          CustomTextButton(onPressed: () {}, text: 'Edit'),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.0.w,
          vertical: 10.0.h,
        ),
        child: const Column(
          children: [
            BugDetailsAttachmentsText(),
            BugDetailsAttachmentsList(),
          ],
        ),
      ),
    );
  }
}
