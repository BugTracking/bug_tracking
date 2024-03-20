import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/helpers/toasts.dart';
import 'package:bug_tracking/core/router/routes.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/core/widgets/custom_loading_indicator.dart';
import 'package:bug_tracking/core/widgets/custom_text_button.dart';
import 'package:bug_tracking/features/settings/logic/cubit/settings_cubit.dart';
import 'package:bug_tracking/features/settings/logic/cubit/settings_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeleteAlertDialog extends StatelessWidget {
  const DeleteAlertDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SettingsCubit, SettingsState>(
      listener: (context, state) {
        if (state is GetDeleteAccFailure) {
          showToast(message: state.message, isError: true);
        }
        if (state is GetDeleteAccSuccess) {
          context.pushAndRemoveUntil(Routes.onBoarding);
          showToast(message: state.message);
        }
      },
      builder: (context, state) {
        SettingsCubit cubit = context.read<SettingsCubit>();
        return AlertDialog(
          titlePadding: EdgeInsets.zero,
          contentPadding: EdgeInsets.zero,
          actionsPadding: EdgeInsets.symmetric(
            horizontal: 10.0.w,
            vertical: 10.0.h,
          ),
          title: Container(
            width: double.infinity,
            color: AppColor.bluish,
            padding: EdgeInsets.symmetric(
              horizontal: 10.w,
              vertical: 10.h,
            ),
            child: Text(
              'Delete Account',
              style: AppTexts.text16OnPrimaryNunitoSansBold,
            ),
          ),
          content: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Are you sure you want to delete your account?',
              style: AppTexts.text14OnBackgroundCairoBold,
              textAlign: TextAlign.center,
            ),
          ),
          actions: [
            CustomTextButton(
              onPressed: () => context.pop(),
              text: 'Cancel',
              textColor: AppColor.redish,
            ),
            state is GetDeleteAccLoading
                ? const CustomLoadingIndicator()
                : CustomTextButton(
                    onPressed: () => cubit.emitDeleteAccountState(),
                    text: 'Delete',
                    textColor: AppColor.bluish,
                  ),
          ],
        );
      },
    );
  }
}
