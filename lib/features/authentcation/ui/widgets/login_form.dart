import 'package:bug_tracking/features/authentcation/logic/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/widgets/custom_text_field.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<AuthCubit>().formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomTextField(
            controller: context.read<AuthCubit>().userNameAndEmailController,
            hintText: 'Username or Email',
            prefixIcon: const Icon(
              Icons.person,
              color: AppColor.greyish,
            ),
            errorMsg: 'Field cannot be empty',
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
          ),
          verticalSpace(16.0),
          CustomTextField(
            controller: context.read<AuthCubit>().passwordController,
            obscureText: _isVisible,
            hintText: 'Password',
            prefixIcon: const Icon(
              Icons.lock,
              color: AppColor.greyish,
            ),
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  _isVisible = !_isVisible;
                });
              },
              icon: Icon(
                _isVisible ? Icons.visibility : Icons.visibility_off,
                color: AppColor.greyish,
              ),
            ),
            errorMsg: 'Field cannot be empty',
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.done,
          ),
        ],
      ),
    );
  }
}
