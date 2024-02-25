import 'package:bug_tracking/features/authentcation/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/widgets/auth_icon.dart';
import 'package:bug_tracking/core/style/app_texts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          style: AppTexts.text21OnBackgroundColorNunitoSansBold,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
          child: Column(
            children: [
              const AuthScreenIcon(),
              verticalSpace(32.0),
              Text(
                'Welcome Back !',
                style: AppTexts.text21OnBackgroundColorNunitoSansBold,
              ),
              verticalSpace(12.0),
              const LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
