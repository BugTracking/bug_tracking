import 'package:bug_tracking/core/di/dependency_injection.dart';
import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/helpers/toasts.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/core/widgets/custom_button.dart';
import 'package:bug_tracking/core/widgets/custom_loading_indicator.dart';
import 'package:bug_tracking/core/widgets/custom_outlined_button.dart';
import 'package:bug_tracking/features/members/logic/member_cubit.dart';
import 'package:bug_tracking/features/members/logic/member_state.dart';
import 'package:bug_tracking/features/members/ui/widgets/search_widget.dart';
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
    return BlocProvider(create: (context)=>getIt<MembersCubit>(),
    
    
    
    child:BlocConsumer<MembersCubit, MembersState>(
      listener: (context, state) {
      state.whenOrNull(
        success: () {
          showToast(message: 'member is added');
          context.pop();
        },
        error: (message) {
          showToast(
            message: 'error',
            isError: true,
          );
        },
      );
    }, builder: (context, state) {
      MembersCubit cubit = context.read<MembersCubit>();
      if (state is Loading) {
        return const Center(
          child: CustomLoadingIndicator(),
        );
      }

      return SingleChildScrollView(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.0.w,
            vertical: 20.0.h,
          ),
          child: Column(
            children: [
              Text(
                'Add Member',
                style: AppTexts.text21OnBackgroundColorNunitoSansBold,
              ),
              verticalSpace(16),
              SearchWidget(
                  hintText: 'Username or Email',
                  controller: cubit.userNameAndEmailController),
              verticalSpace(16),
              Row(
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
              )
            ],
          ),
        ),
      );
    }));
  }
}
