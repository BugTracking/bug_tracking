import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/helpers/toasts.dart';
import 'package:bug_tracking/core/widgets/custom_button.dart';
import 'package:bug_tracking/core/widgets/custom_loading_indicator.dart';
import 'package:bug_tracking/features/project_details/logic/cubit/project_details_cubit.dart';
import 'package:bug_tracking/features/project_details/logic/cubit/project_details_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectEditSubmit extends StatelessWidget {
  final BuildContext context;
  final String projectId;
  const ProjectEditSubmit({
    super.key,
    required this.context,
    required this.projectId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: this.context.read<ProjectDetailsCubit>(),
      child: BlocConsumer<ProjectDetailsCubit, ProjectDetailsState>(
        listener: (context, state) {
          if (state is EditProjectSuccess) {
            showToast(message: state.message);
            context.pop();
            context.read<ProjectDetailsCubit>().projectDetailsModel = null;
            context
                .read<ProjectDetailsCubit>()
                .emitProjectDetailsState(projectId);
          }
          if (state is EditProjectFailure) {
            showToast(message: state.message);
          }
        },
        builder: (context, state) {
          ProjectDetailsCubit cubit = context.read<ProjectDetailsCubit>();
          if (state is EditProjectLoading) {
            return const Center(
              child: CustomLoadingIndicator(),
            );
          }
          return CustomButton(
            onPressed: () => cubit.emitEditProjectState(projectId),
            text: 'Save',
          );
        },
      ),
    );
  }
}
