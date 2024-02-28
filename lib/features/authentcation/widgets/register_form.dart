import 'package:flutter/material.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/widgets/custom_text_field.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  bool _passwordVisible = true;
  bool _confirmPasswordVisible = true;
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
            prefixIcon: const Icon(Icons.person, color: AppColor.greyish),
            errorMsg: 'Field cannot be empty',
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
          ),
          verticalSpace(16.0),
          CustomTextField(
            controller: TextEditingController(),
            hintText: 'User Name',
            prefixIcon: const Icon(Icons.person, color: AppColor.greyish),
            errorMsg: 'Field cannot be empty',
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
          ),
          verticalSpace(16.0),
          CustomTextField(
            controller: TextEditingController(),
            hintText: 'Email',
            prefixIcon: const Icon(
              Icons.email,
              color: AppColor.greyish,
            ),
            errorMsg: 'Field cannot be empty',
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
          ),
          verticalSpace(16.0),
          CustomTextField(
            controller: TextEditingController(),
            hintText: 'Phone',
            prefixIcon: const Icon(
              Icons.phone_android,
              color: AppColor.greyish,
            ),
            errorMsg: 'Field cannot be empty',
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.next,
          ),
          verticalSpace(16.0),
          CustomTextField(
            controller: TextEditingController(),
            obscureText: _passwordVisible,
            hintText: 'Password',
            prefixIcon: const Icon(
              Icons.lock,
              color: AppColor.greyish,
            ),
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  _passwordVisible = !_passwordVisible;
                });
              },
              icon: Icon(
                _passwordVisible ? Icons.visibility : Icons.visibility_off,
                color: AppColor.greyish,
              ),
            ),
            errorMsg: 'Field cannot be empty',
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
          ),
          verticalSpace(16.0),
          CustomTextField(
            controller: TextEditingController(),
            obscureText: _confirmPasswordVisible,
            hintText: 'Confirm Password',
            prefixIcon: const Icon(Icons.lock, color: AppColor.greyish),
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  _confirmPasswordVisible = !_confirmPasswordVisible;
                });
              },
              icon: Icon(
                _confirmPasswordVisible
                    ? Icons.visibility
                    : Icons.visibility_off,
                color: AppColor.greyish,
              ),
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
