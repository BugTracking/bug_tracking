import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/helpers/toasts.dart';
import 'package:bug_tracking/core/router/routes.dart';
import 'package:bug_tracking/core/widgets/custom_loading_indicator.dart';
import 'package:bug_tracking/features/edit_profile/logic/cubit/edit_profile_cubit.dart';
import 'package:bug_tracking/features/edit_profile/logic/cubit/edit_profile_state.dart';
import 'package:flutter/material.dart';
import 'package:bug_tracking/core/widgets/custom_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SubmitEditForm extends StatelessWidget {
  const SubmitEditForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EditProfileCubit, EditProfileState>(
      listener: (context, state) {
        if (state is GetUserEditSuccess) {
          showToast(message: state.message);
          if (context.mounted) {
            context.pushAndRemoveUntil(Routes.home);
          }
        } else if (state is GetUserEditFailure) {
          showToast(message: state.message, isError: true);
        }
      },
      builder: (context, state) {
        if (state is GetUserEditLoading) {
          return const Center(child: CustomLoadingIndicator());
        }
        return CustomButton(
          onPressed: () => context.read<EditProfileCubit>().emitUserEditState(),
          text: 'Save Changes',
        );
      },
    );
  }
}
