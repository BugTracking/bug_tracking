import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/router/routes.dart';
import 'package:bug_tracking/core/widgets/custom_button.dart';
import 'package:bug_tracking/core/widgets/custom_loading_indicator.dart';
import 'package:bug_tracking/features/authentcation/logic/cubit/auth_cubit.dart';
import 'package:bug_tracking/features/authentcation/logic/cubit/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterSubmit extends StatelessWidget {
  const RegisterSubmit({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccess) {
          context.showSnackBar(state.message);
          if (context.mounted) {
            context.pushAndRemoveUntil(Routes.home);
          }
        } else if (state is AuthFailure) {
          context.showSnackBar(state.error, isError: true);
        }
      },
      builder: (context, state) {
        if (state is AuthLoading) {
          return const Center(child: CustomLoadingIndicator());
        }
        return CustomButton(
          onPressed: () => context.read<AuthCubit>().emitRegisterState(),
          text: 'Register',
        );
      },
    );
  }
}
