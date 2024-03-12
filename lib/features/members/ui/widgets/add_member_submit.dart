import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/widgets/custom_button.dart';
import 'package:bug_tracking/core/widgets/custom_loading_indicator.dart';
import 'package:bug_tracking/core/widgets/custom_outlined_button.dart';
import 'package:bug_tracking/features/members/logic/member_cubit.dart';
import 'package:bug_tracking/features/members/logic/member_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddMemberSubmit extends StatelessWidget {
  const AddMemberSubmit({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MembersCubit, MembersState>(
      builder: (context, state) {
        MembersCubit cubit = context.read<MembersCubit>();
        if (state is Loading) {
          return const Center(
            child: CustomLoadingIndicator(),
          );
        }
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomOutlinedButton(
              onPressed: () => context.pop(),
              text: 'Cancel',
              width: 120.w,
            ),
            horizontalSpace(8),
            CustomButton(
              onPressed: () {
                cubit.emitAddMemberState();
              },
              text: 'Save',
              width: 120.w,
            )
          ],
        );
      },
    );
  }
}
