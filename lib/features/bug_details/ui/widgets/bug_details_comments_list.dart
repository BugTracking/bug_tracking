import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/helpers/time_ago.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/core/widgets/custom_member.dart';
import 'package:bug_tracking/features/bug_details/data/models/comments_response_body.dart';
import 'package:bug_tracking/features/bug_details/logic/cubit/bug_details_cubit.dart';
import 'package:bug_tracking/features/bug_details/logic/cubit/bug_details_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BugDetailsCommentsList extends StatelessWidget {
  const BugDetailsCommentsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BugDetailsCubit, BugDetailsState>(
      builder: (context, state) {
        List<CommentData> comments =
            context.read<BugDetailsCubit>().comments ?? [];

        if (comments.isEmpty) {
          return Center(
            child: Text(
              'No comments yet',
              style: AppTexts.text16OnBackgroundNunitoSansBold,
            ),
          );
        }
        return ListView.separated(
          itemBuilder: (context, index) {
            CommentData comment = comments[index];
            List<String> dates = comment.time.extractDate().split('-');
            List<String> times = comment.time.extractTime().split(':');
            print(times);
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: CustomMember(
                    image: comment.user.avatar,
                    name: comment.user.name,
                    body: comment.comment.content,
                  ),
                ),
                horizontalSpace(8),
                Padding(
                  padding: EdgeInsets.only(top: 5.0.h),
                  child: Text(
                    getTimeAgo(
                      createdTime: DateTime(
                        int.parse(dates[0]),
                        int.parse(dates[1]),
                        int.parse(
                          dates[2],
                        ),
                        int.parse(times[0]),
                        int.parse(times[1]),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (context, index) => verticalSpace(8.0),
          padding: EdgeInsets.zero,
          itemCount: comments.length,
        );
      },
    );
  }
}
