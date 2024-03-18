import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/features/add_bug/logic/cubit/add_bug_cubit.dart';
import 'package:bug_tracking/features/add_bug/logic/cubit/add_bug_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateAnotherIssue extends StatelessWidget {
  const CreateAnotherIssue({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddBugCubit, AddBugState>(
      builder: (context, state) {
        AddBugCubit cubit = context.read<AddBugCubit>();
        return Row(
          children: [
            Transform.scale(
              scale: 1.6,
              child: Checkbox(
                value: cubit.isUserWantToCreateAnotherBug,
                onChanged: (value) => cubit.setIsUserWantToCreateAnotherBug(),
                checkColor: Colors.white,
                splashRadius: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
                side: const BorderSide(
                  color: AppColor.greyish,
                ),
              ),
            ),
            Expanded(
              child: Text(
                'Create another Issue',
                style: AppTexts.text14OnBackgroundCairoSemiBold,
              ),
            ),
          ],
        );
      },
    );
  }
}
