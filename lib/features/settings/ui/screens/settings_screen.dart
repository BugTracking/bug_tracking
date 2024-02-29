import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/features/edit_profile/ui/widgets/image_picker.dart';
import 'package:bug_tracking/features/settings/ui/widgets/settings_container.dart';
import 'package:bug_tracking/features/settings/ui/widgets/logout_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            verticalSpace(10.0),
            const Center(child: ImagePickerWidget()),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Edit Profile",
                  style: AppTexts.text16PrimaryNunitoSansBold,
                )),
            InkWell(
              child: Container(
                height: 56.w,
                decoration: BoxDecoration(
                    color: AppColor.lightGrey,
                    borderRadius: BorderRadius.circular(10.0)),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                      child: Text(
                        "Night Mode",
                        style: AppTexts.text14OnBackgroundCairoSemiBold,
                      ),
                    ),
                    const Spacer(),
                    Switch(
                      value: isSelected,
                      onChanged: (value) {
                        setState(() {
                          isSelected = value;
                        });
                      },
                      inactiveTrackColor: AppColor.darkGreyish,
                      activeColor: AppColor.bluish,
                      focusColor: AppColor.bluish,
                      inactiveThumbColor: Colors.white12,
                      hoverColor: Colors.white,
                      trackOutlineColor:
                          const MaterialStatePropertyAll(Colors.white12),
                    ),
                  ],
                ),
              ),
            ),
            verticalSpace(
              10.0,
            ),
            const SettingsContainer(
              text: "Terms&conditions",
            ),
            const SettingsContainer(
              text: "Members",
              icon: Icons.arrow_forward_ios,
            ),
            const SettingsContainer(
              text: "Add Member ",
              icon: Icons.arrow_forward_ios,
            ),
            const SettingsContainer(
              text: "Delete Account",
              color: AppColor.redish,
              icon: Icons.arrow_forward_ios,
            ),
            const LogoutButton(),
          ])),
    );
  }
}
