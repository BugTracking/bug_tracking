import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/features/settings/logic/cubit/settings_cubit.dart';
import 'package:bug_tracking/features/settings/logic/cubit/settings_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/toasts.dart';
import '../../../../core/router/routes.dart';
import '../../../../core/widgets/custom_loading_indicator.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SettingsCubit, SettingsState>(
        listener: (context, state) {
      if (state is GetLogOutSuccess) {
        showToast(message: state.message);
        if (context.mounted) {
          showToast(message: state.message, isError: true);
          context.pushAndRemoveUntil(Routes.onBoarding);
        }
      } else if (state is GetLogOutFailure) {
        showToast(message: state.message, isError: true);
      }
    }, builder: (context, state) {
      if (state is GetLogOutLoading) {
        return const Center(child: CustomLoadingIndicator());
      }
      return InkWell(
        onTap: () => context.read<SettingsCubit>().emitLogOutState(),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              const Icon(Icons.logout, color: AppColor.redish, size: 20.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                child: Text(
                  "Log Out",
                  style: AppTexts.text14RedishNunitoSansBold,
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
