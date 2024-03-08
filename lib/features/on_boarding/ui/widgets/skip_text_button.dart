import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/router/routes.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:bug_tracking/core/helpers/cache_helper.dart';

class SkipTextButton extends StatelessWidget {
  const SkipTextButton({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => {
        if(CacheHelper.getString(key: 'token')==null){
          context.push(Routes.getStarted)
        }
        else{
          context.push(Routes.home)
        }
      },
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
