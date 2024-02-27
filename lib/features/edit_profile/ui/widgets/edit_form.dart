import 'package:flutter/material.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';

import 'package:bug_tracking/core/widgets/custom_text_field.dart';

class EditForm extends StatefulWidget {
  const EditForm({Key? key}) : super(key: key);

  @override
  State<EditForm> createState() => _EditFormState();
}

class _EditFormState extends State<EditForm> {
  final _formKey = GlobalKey<FormState>();
  bool _isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomTextField(
            controller: TextEditingController(),
            hintText: 'Name',
            prefixIcon: const Icon(
              Icons.person,
              color: AppColor.greyish,
            ),
            hintStyle: AppTexts.text16GreyNunitoSansRegular,
            errorMsg: 'Field cannot be empty',
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.done,
          ),
          verticalSpace(16.0),
          CustomTextField(
            controller: TextEditingController(),
            hintText: 'User Name',
            prefixIcon: const Icon(
              Icons.person,
              color: AppColor.greyish,
            ),
            hintStyle: AppTexts.text16GreyNunitoSansRegular,
            errorMsg: 'Field cannot be empty',
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.done,
          ),
          verticalSpace(16.0),
          CustomTextField(
            controller: TextEditingController(),
            hintText: 'Email',
            prefixIcon: const Icon(
              Icons.email,
              color: AppColor.greyish,
            ),
            hintStyle: AppTexts.text16GreyNunitoSansRegular,
            errorMsg: 'Field cannot be empty',
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.done,
          ),
          verticalSpace(16.0),
          CustomTextField(
            controller: TextEditingController(),
            obscureText: _isVisible,
            hintText: 'Password',
            hintStyle: AppTexts.text16GreyNunitoSansRegular,
            prefixIcon: const Icon(
              Icons.lock,
              color: AppColor.greyish,
            ),
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  _isVisible = !_isVisible;
                });
              },
              icon: Icon(_isVisible ? Icons.visibility_off : Icons.visibility,
                  color: AppColor.greyish),
            ),
            errorMsg: 'Field cannot be empty',
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.done,
          ),
        ],
      ),
    );
  }
}
