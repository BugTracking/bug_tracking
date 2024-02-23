import 'package:bug_tracking/features/authentcation/register/ui/widgets/dropdown_role.dart';
import 'package:flutter/material.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/widgets/custom_button.dart';
import 'package:bug_tracking/core/widgets/custom_textfield.dart';
class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {

  bool _isVisible = true;
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Container(
        child: SingleChildScrollView(
          child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  CustomTextField(
                    hintText: 'Name',
                    prefixIcon: Icon(Icons.lock, color: AppColor.greyish),
                    hintStyle:AppTexts.text16GreyNunitoSansRegular,
                  ),
                  verticalSpace(16.0),
                  CustomTextField(
                    hintText: 'User Name',
                    prefixIcon: Icon(Icons.person, color: AppColor.greyish),
                    hintStyle:AppTexts.text16GreyNunitoSansRegular,
                  ),
                  verticalSpace(16.0),
                  CustomTextField(
                      hintText: 'Email',
                    prefixIcon: Icon(Icons.email, color: AppColor.greyish),
                    hintStyle:AppTexts.text16GreyNunitoSansRegular,
                  ),

                  verticalSpace(16.0),

                  CustomTextField(
                    hintText: 'Phone',
                    prefixIcon: Icon(Icons.phone_android, color: AppColor.greyish),
                    hintStyle:AppTexts.text16GreyNunitoSansRegular,
                  ),

                  verticalSpace(16.0),

                  CustomTextField(
                    obscureText: _isVisible,
                    hintText: 'Password',
                    hintStyle: AppTexts.text16GreyNunitoSansRegular,
                    prefixIcon: Icon(Icons.lock, color: AppColor.greyish),
                    suffixIcon:IconButton(onPressed: (){

                      setState(() {
                        _isVisible=!_isVisible;
                      });

                    },
                      icon: Icon(_isVisible?Icons.visibility_off:Icons.visibility,
                          color: AppColor.greyish),
                    ),

                  ),

                  verticalSpace(16.0),
                  CustomTextField(
                    obscureText: _isVisible,
                    hintText: 'Confirm Password',
                    hintStyle: AppTexts.text16GreyNunitoSansRegular,
                    prefixIcon: Icon(Icons.lock, color: AppColor.greyish),
                    suffixIcon:IconButton(onPressed: (){

                      setState(() {
                        _isVisible=!_isVisible;
                      });

                    },
                      icon: Icon(_isVisible?Icons.visibility_off:Icons.visibility,
                          color: AppColor.greyish),
                    ),

                  ),

                  verticalSpace(17.0),

                  //RoleDropDownList(),


                  CustomButton(onPressed: (){}, text: 'Register',),

                  verticalSpace(17.0),

                 // HaveAccount(),
                ],
              )),
        ),
      ),
    );
  }
}