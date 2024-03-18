import 'package:bug_tracking/core/helpers/toasts.dart';
import 'package:bug_tracking/core/widgets/custom_button.dart';
import 'package:bug_tracking/core/widgets/custom_loading_indicator.dart';
import 'package:bug_tracking/features/add_bug/logic/cubit/add_bug_cubit.dart';
import 'package:bug_tracking/features/add_bug/logic/cubit/add_bug_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SaveButton extends StatelessWidget {
  final String projectId;
  const SaveButton({
    super.key,
    required this.projectId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddBugCubit, AddBugState>(
      listener: (context, state) {
        state.whenOrNull(
          addBugSuccess: (message) {
            if (context.read<AddBugCubit>().isUserWantToCreateAnotherBug) {
              context.read<AddBugCubit>().reset();
            } else {
              Navigator.pop(context);
            }
            showToast(message: message);
          },
          addBugFailure: (error) {
            showToast(message: error);
          },
        );
      },
      builder: (context, state) {
        if (state is AddBugLoading) {
          return const Center(
            child: CustomLoadingIndicator(),
          );
        }
        return CustomButton(
          onPressed: () =>
              context.read<AddBugCubit>().emitAddBugsState(projectId),
          text: 'Save',
        );
      },
    );
  }
}
