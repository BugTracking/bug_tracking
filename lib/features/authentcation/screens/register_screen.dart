import 'package:bug_tracking/features/authentcation/widgets/register_form.dart';
import 'package:flutter/material.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/widgets/auth_icon.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/features/authentcation/widgets/dropdown_role.dart';
import 'package:bug_tracking/core/widgets/custom_button.dart';
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Register',
          style: AppTexts.text21OnBackgroundColorNunitoSansBold,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
            child: Column(
              children: [
                const AuthScreenIcon(),
                verticalSpace(32.0),
                const RegisterForm(),
                verticalSpace(16.0),
                const RoleDropDownList(),

                verticalSpace(16.0),
                CustomButton(
                  onPressed: () {},
                  text: 'Register',
                ),

                verticalSpace(17.0),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
