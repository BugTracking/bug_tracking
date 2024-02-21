import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/router/routes.dart';
import 'package:bug_tracking/core/widgets/custom_button.dart';
import 'package:bug_tracking/features/on_boarding/logic/cubit/on_boarding_cubit.dart';
import 'package:bug_tracking/features/on_boarding/logic/cubit/on_boarding_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingButton extends StatelessWidget {
  const OnBoardingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingCubit, OnBoardingState>(
      builder: (context, state) {
        OnBoardingCubit cubit = context.read<OnBoardingCubit>();
        return CustomButton(
          onPressed: () {
            if (cubit.currentIndex == cubit.onBoardingList.length - 1) {
              context.push(Routes.getStarted);
            } else {
              cubit.emitChangePageState(cubit.currentIndex + 1);
            }
          },
          text: cubit.currentIndex == cubit.onBoardingList.length - 1
              ? "Let's get started"
              : 'Next',
        );
      },
    );
  }
}
