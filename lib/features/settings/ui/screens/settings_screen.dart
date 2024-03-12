import 'package:bug_tracking/core/data/app_data.dart';
import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/router/routes.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/core/widgets/custom_text_button.dart';
import 'package:bug_tracking/features/edit_profile/ui/widgets/image_picker.dart';
import 'package:bug_tracking/features/settings/ui/widgets/settings_container.dart';
import 'package:bug_tracking/features/settings/ui/widgets/logout_button.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        title: Text(
          "Settings ",
          style: AppTexts.text21OnBackgroundColorNunitoSansBold,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(children: [
              verticalSpace(10.0),
              const ImagePickerWidget(),
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
                onTap: () {},
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
                onTap: () {},
              ),
              const LogoutButton(),
            ])),
      ),
    );
  }
}
