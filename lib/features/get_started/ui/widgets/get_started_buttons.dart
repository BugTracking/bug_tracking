import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/widgets/custom_button.dart';
import 'package:bug_tracking/core/router/routes.dart';
import 'package:bug_tracking/core/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class GetStartedButtons extends StatelessWidget {
  const GetStartedButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
          onPressed: () {
            Navigator.pushNamed(context, Routes.register);
          },
          text: 'Register',
        ),
        verticalSpace(10.0),
        CustomOutlinedButton(
          onPressed: () {
            Navigator.pushNamed(context, Routes.login);
          },
          text: 'Login',
        ),
        verticalSpace(40.0),
      ],
    );
  }
}
