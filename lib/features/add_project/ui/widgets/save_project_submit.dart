import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/helpers/toasts.dart';
import 'package:bug_tracking/core/widgets/custom_button.dart';
import 'package:bug_tracking/core/widgets/custom_loading_indicator.dart';
import 'package:bug_tracking/features/add_project/logic/cubit/add_project_cubit.dart';
import 'package:bug_tracking/features/add_project/logic/cubit/add_project_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SaveProjectSubmit extends StatelessWidget {
  const SaveProjectSubmit({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddProjectCubit, AddProjectState>(
      listener: (context, state) {
        state.whenOrNull(
          success: () {
            showToast(message: 'Project created successfully');
            context.pop();
          },
          error: (message) {
            showToast(
              message: message.toString(),
              isError: true,
            );
          },
        );
      },
      builder: (context, state) {
        if (state is Loading) {
          return const Center(
            child: CustomLoadingIndicator(),
          );
        }
        return CustomButton(
          onPressed: () =>
              context.read<AddProjectCubit>().emitAddProjectState(),
          text: 'Save',
        );
      },
    );
  }
}
