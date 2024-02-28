import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/widgets/custom_divider.dart';
import 'package:bug_tracking/core/widgets/custom_list_title.dart';
import 'package:bug_tracking/core/widgets/custom_project_info_text.dart';
import 'package:bug_tracking/core/widgets/custom_text_button.dart';
import 'package:bug_tracking/core/widgets/custom_text_field.dart';
import 'package:bug_tracking/features/bug_details/ui/widgets/bug_details_attachments_list.dart';
import 'package:bug_tracking/features/bug_details/ui/widgets/bug_details_attachments_text.dart';
import 'package:bug_tracking/features/bug_details/ui/widgets/bug_details_comments_list.dart';
import 'package:bug_tracking/features/bug_details/ui/widgets/bug_details_members_list.dart';
import 'package:bug_tracking/features/bug_details/ui/widgets/bug_details_summary_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BugDetailsScreen extends StatelessWidget {
  const BugDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        if (didPop) {
          return;
        }
        context.pop();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Bug Details'),
          actions: [
            CustomTextButton(onPressed: () {}, text: 'Edit'),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: 20.0.w,
              right: 20.0.w,
              top: 10.0.h,
              bottom: 30.0.h,
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
                const CustomListTitle(
                  title: 'Summary',
                ),
                const BugDetailsSummaryBody(
                  text:
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry . Lorem Ipsum is simply dummy text of the printing and typesetting industry .',
                ),
                CustomListTitle(
                  onPressed: () {},
                  title: 'Members',
                ),
                const BugDetailsMembersList(),
                verticalSpace(8.0),
                const CustomListTitle(
                  title: 'Comments',
                ),
                const BugDetailsCommentsList(),
                verticalSpace(16.0),
                CustomTextField(
                  controller: TextEditingController(),
                  hintText: 'Add a comment',
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.text,
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset('assets/icons/post_icon.svg'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
