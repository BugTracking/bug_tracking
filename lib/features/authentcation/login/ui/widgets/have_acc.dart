import 'package:flutter/material.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/core/router/routes.dart';

class HaveAccount extends StatelessWidget {
  const HaveAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Doesn't Have Account?",style: AppTexts.text12GreyNunitoSansSemiBold,),
        TextButton(onPressed: (){
          Navigator.pushNamed(context, Routes.register);
        },
            child: Text('Register', style: AppTexts.text12PrimaryNunitoSansBold,)),
      ],


    );
  }
}
