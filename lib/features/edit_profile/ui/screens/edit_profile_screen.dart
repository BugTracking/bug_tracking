import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/features/edit_profile/ui/widgets/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/features/edit_profile/ui/widgets/edit_form.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/widgets/custom_button.dart';
import 'package:bug_tracking/core/widgets/custom_drop_down_list.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  String roleSelected = 'Admin';
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        if (didPop) {
          return;
        }
        context.pop();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Edit',
            style: AppTexts.text21OnBackgroundColorNunitoSansBold,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              verticalSpace(10.0),
              const ImagePickerWidget(),
              verticalSpace(40.0),
              const EditForm(),
              verticalSpace(16.0),
              CustomDropDownList(
                hintText: 'Role',
                prefixWidget: const Icon(
                  Icons.groups,
                  color: AppColor.greyish,
                ),
                onChanged: (value) {
                  setState(() {
                    roleSelected = value ?? '';
                  });
                },
                items: const ['User', 'Admin'],
                selectedItem: roleSelected,
              ),
              verticalSpace(16.0),
              CustomButton(
                onPressed: () {},
                text: 'Save Changes',
              ),
              verticalSpace(17.0),
            ],
          ),
        ),
      ),
    );
  }
}
