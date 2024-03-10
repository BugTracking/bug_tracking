import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/widgets/custom_loading_indicator.dart';
import 'package:bug_tracking/features/bug_details/logic/cubit/bug_details_cubit.dart';
import 'package:bug_tracking/features/bug_details/logic/cubit/bug_details_state.dart';
import 'package:bug_tracking/features/bug_details/ui/widgets/edit_bug_form.dart';
import 'package:bug_tracking/features/bug_details/ui/widgets/edit_save_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditBugBottomSheet extends StatelessWidget {
  final String bugId;
  const EditBugBottomSheet({super.key, required this.bugId});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BugDetailsCubit, BugDetailsState>(
      builder: (context, state) {
        BugDetailsCubit cubit = context.read<BugDetailsCubit>();
        if (cubit.categories == null) {
          return const Center(
            child: CustomLoadingIndicator(),
          );
        }
        return SingleChildScrollView(
          padding: EdgeInsets.only(
            top: 20.h,
            left: 16.w,
            right: 16.w,
            bottom: MediaQuery.of(context).viewInsets.bottom + 20.h,
          ),
          child: Column(
            children: [
              const EditBugForm(),
              verticalSpace(10.0),
              EditSaveButton(bugId: bugId),
            ],
          ),
        );
      },
    );
  }
}
