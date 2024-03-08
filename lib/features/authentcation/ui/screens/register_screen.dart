import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/features/authentcation/ui/widgets/register_form.dart';
import 'package:bug_tracking/features/authentcation/ui/widgets/register_submit.dart';
import 'package:flutter/material.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/widgets/auth_icon.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bug_tracking/core/di/dependency_injection.dart';
import 'package:bug_tracking/features/authentcation/logic/cubit/auth_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String roleSelected = '';
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
          appBar: AppBar(
            title: Text(
              'Register',
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
                    const RegisterForm(),
                    verticalSpace(16.0),
                  const RegisterSubmit(),
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
