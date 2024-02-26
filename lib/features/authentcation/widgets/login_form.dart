
import 'package:flutter/material.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/widgets/custom_textfield.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';


class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  bool _isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomTextField(
                hintText: 'User Name',
                prefixIcon: Icon(Icons.person, color: AppColor.greyish),
                hintStyle: AppTexts.text16GreyNunitoSansRegular,
                errorMsg: 'Field cannot be empty',
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
              ),
              verticalSpace(16.0),
              CustomTextField(
                obscureText: _isVisible,
                hintText: 'Password',
                hintStyle: AppTexts.text16GreyNunitoSansRegular,
                prefixIcon: Icon(Icons.lock, color: AppColor.greyish),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _isVisible = !_isVisible;
                    });
                  },
                  icon: Icon(
                      _isVisible ? Icons.visibility_off : Icons.visibility,
                      color: AppColor.greyish),
                ),
                errorMsg: 'Field cannot be empty',
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
              ),


            ],
          )),
    );
  }
}
