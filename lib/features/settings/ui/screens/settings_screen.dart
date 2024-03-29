import 'package:bug_tracking/core/data/app_data.dart';
import 'package:bug_tracking/core/di/dependency_injection.dart';
import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/router/routes.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/core/widgets/custom_text_button.dart';
import 'package:bug_tracking/features/settings/logic/cubit/settings_cubit.dart';
import 'package:bug_tracking/features/settings/logic/cubit/settings_state.dart';
import 'package:bug_tracking/features/settings/ui/widgets/delete_alert_dialog.dart';
import 'package:bug_tracking/features/settings/ui/widgets/settings_avatar.dart';
import 'package:bug_tracking/features/settings/ui/widgets/settings_container.dart';
import 'package:bug_tracking/features/settings/ui/widgets/logout_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SettingsCubit>(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Settings ",
            style: AppTexts.text21OnBackgroundColorNunitoSansBold,
          ),
        ),
        body: BlocBuilder<SettingsCubit, SettingsState>(
          builder: (context, state) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    verticalSpace(10.0),
                    const SettingsAvatar(),
                    verticalSpace(5.0),
                    Text(
                      userData.user.name,
                      style: AppTexts.text21OnBackgroundColorNunitoSansBold,
                    ),
                    CustomTextButton(
                      onPressed: () => context.push(Routes.editProfile),
                      text: 'Edit Profile',
                    ),
                    verticalSpace(
                      10.0,
                    ),
                    SettingsContainer(
                      text: "Terms&conditions",
                      onTap: () => context.push(Routes.termsandcondtions),
                    ),
                    SettingsContainer(
                      text: "Members",
                      icon: Icons.arrow_forward_ios,
                      onTap: () => context.push(
                        Routes.members,
                      ),
                    ),
                    SettingsContainer(
                      text: "Delete Account",
                      color: AppColor.redish,
                      icon: Icons.arrow_forward_ios,
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (_) {
                            return BlocProvider.value(
                              value: context.read<SettingsCubit>(),
                              child: const DeleteAlertDialog(),
                            );
                          },
                        );
                      },
                    ),
                    const LogoutButton(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
