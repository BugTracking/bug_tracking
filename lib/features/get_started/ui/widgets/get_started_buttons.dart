import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/widgets/custom_button.dart';
import 'package:bug_tracking/core/router/routes.dart';
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
        CustomButton(
          onPressed: () {
            Navigator.pushNamed(context, Routes.login);
          },
          text: 'Login',
          color: Colors.white,
          textColor: AppColor.bluish,
        ),
        verticalSpace(40.0),
      ],
    );
  }
}
