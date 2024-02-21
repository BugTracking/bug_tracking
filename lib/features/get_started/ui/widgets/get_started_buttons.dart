import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class GetStartedButtons extends StatelessWidget {
  const GetStartedButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
          onPressed: () {},
          text: 'Register',
        ),
        verticalSpace(10.0),
        CustomButton(
          onPressed: () {},
          text: 'Login',
          color: Colors.white,
          textColor: AppColor.bluish,
        ),
        verticalSpace(40.0),
      ],
    );
  }
}
