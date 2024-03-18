import 'package:bug_tracking/core/di/dependency_injection.dart';
import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/features/authentcation/logic/cubit/auth_cubit.dart';
import 'package:bug_tracking/features/authentcation/ui/widgets/login_form.dart';
import 'package:bug_tracking/features/authentcation/ui/widgets/login_submit.dart';
import 'package:flutter/material.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/widgets/auth_icon.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthCubit>(),
      child: PopScope(
        canPop: false,
        onPopInvoked: (didPop) {
          if (didPop) {
            return;
          }
          context.pop();
        },
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: AppBar(
            title: Text(
              'Login',
              style: AppTexts.text21OnBackgroundColorNunitoSansBold,
            ),
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(
                  top: 20.0.h,
                  left: 15.0.w,
                  right: 15.0.w,
                ),
                child: Column(
                  children: [
                    const AuthScreenIcon(),
                    verticalSpace(32.0),
                    Text(
                      'Welcome Back !',
                      style: AppTexts.text21OnBackgroundColorNunitoSansBold,
                    ),
                    verticalSpace(32.0),
                    const LoginForm(),
                    verticalSpace(17.0),
                    const LoginSubmit(),
                    verticalSpace(17.0),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
