import 'package:bug_tracking/core/helpers/toasts.dart';
import 'package:bug_tracking/core/widgets/custom_button.dart';
import 'package:bug_tracking/core/widgets/custom_loading_indicator.dart';
import 'package:bug_tracking/features/bug_details/logic/cubit/bug_details_cubit.dart';
import 'package:bug_tracking/features/bug_details/logic/cubit/bug_details_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditSaveButton extends StatelessWidget {
  final String bugId;
  const EditSaveButton({super.key, required this.bugId});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BugDetailsCubit, BugDetailsState>(
      listener: (context, state) {
        state.whenOrNull(
          editBugSuccess: (data) {
            showToast(message: data.message ?? '');
            Navigator.of(context).pop();
            context.read<BugDetailsCubit>().bugDetailsModel = null;
            context.read<BugDetailsCubit>().emitBugDetailsState(bugId);
          },
          editBugFailure: (error) {
            showToast(message: error, isError: true);
          },
        );
      },
      builder: (context, state) {
        if (state is EditBugLoading) {
          return const Center(
            child: CustomLoadingIndicator(),
          );
        }
        return CustomButton(
          onPressed: () =>
              context.read<BugDetailsCubit>().emitEditBugState(bugId),
          text: 'Save',
        );
      },
    );
  }
}
