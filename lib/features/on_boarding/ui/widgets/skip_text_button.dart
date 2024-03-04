import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/router/routes.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:flutter/material.dart';

class SkipTextButton extends StatelessWidget {
  const SkipTextButton({
    super.key,
  });
//context.push(Routes.getStarted)
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => context.push(Routes.getStarted),
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
