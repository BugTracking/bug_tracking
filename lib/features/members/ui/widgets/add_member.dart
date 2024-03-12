import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/helpers/toasts.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/core/widgets/custom_text_field.dart';
import 'package:bug_tracking/features/members/logic/member_cubit.dart';
import 'package:bug_tracking/features/members/logic/member_state.dart';
import 'package:bug_tracking/features/members/ui/widgets/add_member_submit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddMember extends StatefulWidget {
  const AddMember({Key? key}) : super(key: key);

  @override
  State<AddMember> createState() => _AddMemberState();
}

class _AddMemberState extends State<AddMember> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MembersCubit, MembersState>(listener: (context, state) {
      state.whenOrNull(
        success: () {
          showToast(message: 'member is added');
          context.pop();
        },
        error: (message) {
          showToast(
            message: message,
            isError: true,
          );
        },
      );
    }, builder: (context, state) {
      MembersCubit cubit = context.read<MembersCubit>();
      return SingleChildScrollView(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.0.w,
            vertical: 20.0.h,
          ),
          child: Form(
            key: cubit.formKey,
            child: Column(
              children: [
                Text(
                  'Add Member',
                  style: AppTexts.text21OnBackgroundColorNunitoSansBold,
                ),
                verticalSpace(16),
                CustomTextField(
                  controller: cubit.userNameAndEmailController,
                  hintText: 'Username or email',
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                ),
                verticalSpace(16),
                const AddMemberSubmit(),
              ],
            ),
          ),
        ),
      );
    });
  }
}
