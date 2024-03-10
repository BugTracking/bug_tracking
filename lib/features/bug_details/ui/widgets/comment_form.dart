import 'package:bug_tracking/core/helpers/toasts.dart';
import 'package:bug_tracking/core/widgets/custom_loading_indicator.dart';
import 'package:bug_tracking/core/widgets/custom_text_field.dart';
import 'package:bug_tracking/features/bug_details/logic/cubit/bug_details_cubit.dart';
import 'package:bug_tracking/features/bug_details/logic/cubit/bug_details_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class CommentForm extends StatelessWidget {
  final String bugId;
  const CommentForm({super.key, required this.bugId});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BugDetailsCubit, BugDetailsState>(
      listener: (context, state) {
        state.whenOrNull(
          addCommentsSuccess: (data) {
            showToast(message: 'Comment added successfully');
          },
          addCommentsFailure: (error) {
            showToast(message: error);
          },
        );
      },
      builder: (context, state) {
        BugDetailsCubit cubit = context.read<BugDetailsCubit>();
        if (state is AddCommentLoading) {
          return const Center(
            child: CustomLoadingIndicator(),
          );
        }
        return Form(
          key: cubit.commentFormKey,
          child: CustomTextField(
            controller: cubit.commentController,
            hintText: 'Add a comment',
            textInputAction: TextInputAction.newline,
            keyboardType: TextInputType.multiline,
            errorMsg: 'Please enter a comment',
            suffixIcon: IconButton(
              onPressed: () => cubit.addComment(bugId),
              icon: SvgPicture.asset('assets/icons/post_icon.svg'),
            ),
          ),
        );
      },
    );
  }
}
