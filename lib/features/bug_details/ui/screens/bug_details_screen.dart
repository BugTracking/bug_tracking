import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/widgets/custom_divider.dart';
import 'package:bug_tracking/core/widgets/custom_project_info_text.dart';
import 'package:bug_tracking/core/widgets/custom_text_button.dart';
import 'package:bug_tracking/features/bug_details/ui/widgets/bug_details_attachments_list.dart';
import 'package:bug_tracking/features/bug_details/ui/widgets/bug_details_attachments_text.dart';
import 'package:bug_tracking/features/bug_details/ui/widgets/bug_details_summary_body.dart';
import 'package:bug_tracking/features/bug_details/ui/widgets/bug_details_summary_text.dart';
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BugDetailsAttachmentsText(),
            const BugDetailsAttachmentsList(),
            verticalSpace(10.0),
            const CustomProjectInfo(
              lastUpdateOnText: '10/10/2022',
              updatedByText: 'Adel Mohamed',
              createdByText: 'Adel Mohamed',
              createdAtText: '10/10/2022',
            ),
            verticalSpace(10.0),
            const CustomDivider(),
            verticalSpace(10.0),
            const BugDetailsSummaryText(),
            verticalSpace(5.0),
            const BugDetailsSummaryBody(
              text:
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry . Lorem Ipsum is simply dummy text of the printing and typesetting industry .',
            ),
          ],
        ),
      ),
    );
  }
}
