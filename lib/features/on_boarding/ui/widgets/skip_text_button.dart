import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/router/routes.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/features/add_project/ui/screens/add_project_screen.dart';
import 'package:flutter/material.dart';

class SkipTextButton extends StatelessWidget {
  const SkipTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const AddProjectScreen(),
          ),
          (route) => false),
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: Text(
        'Skip',
        style: AppTexts.text16GreyNunitoSansRegular,
      ),
    );
  }
}
