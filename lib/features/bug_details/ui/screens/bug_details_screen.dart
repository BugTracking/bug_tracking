import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/router/routes.dart';
import 'package:bug_tracking/core/widgets/custom_divider.dart';
import 'package:bug_tracking/core/widgets/custom_list_title.dart';
import 'package:bug_tracking/core/widgets/custom_loading_indicator.dart';
import 'package:bug_tracking/core/widgets/custom_project_info_text.dart';
import 'package:bug_tracking/core/widgets/custom_text_button.dart';
import 'package:bug_tracking/core/widgets/custom_text_field.dart';
import 'package:bug_tracking/features/bug_details/data/models/bug_details_response_body.dart';
import 'package:bug_tracking/features/bug_details/logic/cubit/bug_details_cubit.dart';
import 'package:bug_tracking/features/bug_details/logic/cubit/bug_details_state.dart';
import 'package:bug_tracking/features/bug_details/ui/widgets/bug_details_attachments_list.dart';
import 'package:bug_tracking/features/bug_details/ui/widgets/bug_details_attachments_text.dart';
import 'package:bug_tracking/features/bug_details/ui/widgets/bug_details_comments_list.dart';
import 'package:bug_tracking/features/bug_details/ui/widgets/bug_details_members_list.dart';
import 'package:bug_tracking/features/bug_details/ui/widgets/bug_details_summary_body.dart';
import 'package:bug_tracking/features/home/data/models/bugs_response_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BugDetailsScreen extends StatelessWidget {
  final String bugId;
  final String bugTitle;
  const BugDetailsScreen({
    super.key,
    required this.bugId,
    required this.bugTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          bugTitle,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        actions: [
          CustomTextButton(
            onPressed: () {},
            text: 'Edit',
          ),
        ],
      ),
      body: BlocBuilder<BugDetailsCubit, BugDetailsState>(
        builder: (context, state) {
          BugDetailsCubit cubit = context.read<BugDetailsCubit>();
          if (cubit.bugDetailsModel == null) {
            return const Center(
              child: CustomLoadingIndicator(
                size: 60.0,
              ),
            );
          }
          BugDetailsModel bugDetailsModel = cubit.bugDetailsModel!;
          BugModel bug = bugDetailsModel.bug;
          return SingleChildScrollView(
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
                  CustomProjectInfo(
                    lastUpdateOnText: bug.lastUpdatedAt.extractDate(),
                    updatedByText: bug.lastUpdatedBy.name.toShortcut(),
                    createdByText: bug.creator.name.toShortcut(),
                    createdAtText: bug.timeCreated.extractDate(),
                  ),
                  verticalSpace(10.0),
                  const CustomDivider(),
                  const CustomListTitle(
                    title: 'Summary',
                  ),
                  BugDetailsSummaryBody(
                    text: bug.description,
                  ),
                  CustomListTitle(
                    onPressed: () => context.push(Routes.members),
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
          );
        },
      ),
    );
  }
}
