import 'package:bug_tracking/features/edit_profile/ui/widgets/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/features/edit_profile/ui/widgets/edit_form.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/widgets/custom_button.dart';
import 'package:bug_tracking/core/widgets/dropdown_role.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            const RoleDropDownList(),
            verticalSpace(16.0),
            CustomButton(
              onPressed: () {},
              text: 'Save Changes',
            ),
            verticalSpace(17.0),
          ],
        ),
      ),
    );
  }
}
