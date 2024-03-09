import 'package:bug_tracking/core/widgets/custom_drop_down_list.dart';
import 'package:flutter/material.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/widgets/custom_text_field.dart';
import 'package:bug_tracking/features/authentcation/logic/cubit/auth_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  bool _passwordVisible = true;
  bool _confirmPasswordVisible = true;
  String roleSelected = 'User';
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<AuthCubit>().formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomTextField(
            controller: context.read<AuthCubit>().nameController,
            hintText: 'Name',
            prefixIcon: const Icon(Icons.person, color: AppColor.greyish),
            errorMsg: 'Field cannot be empty',
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
          ),
          verticalSpace(16.0),
          CustomTextField(
            controller: context.read<AuthCubit>().userNameController,
            hintText: 'User Name',
            prefixIcon: const Icon(Icons.person, color: AppColor.greyish),
            errorMsg: 'Field cannot be empty',
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
          ),
          verticalSpace(16.0),
          CustomTextField(
            controller: context.read<AuthCubit>().emailController,
            hintText: 'Email',
            prefixIcon: const Icon(
              Icons.email,
              color: AppColor.greyish,
            ),
            errorMsg: 'Field cannot be empty',
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
          ),
          verticalSpace(16.0),
          CustomTextField(
            controller: context.read<AuthCubit>().phoneController,
            hintText: 'Phone',
            prefixIcon: const Icon(
              Icons.phone_android,
              color: AppColor.greyish,
            ),
            errorMsg: 'Field cannot be empty',
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.next,
          ),
          verticalSpace(16.0),
          CustomTextField(
            controller: context.read<AuthCubit>().passwordController,
            obscureText: _passwordVisible,
            hintText: 'Password',
            prefixIcon: const Icon(
              Icons.lock,
              color: AppColor.greyish,
            ),
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  _passwordVisible = !_passwordVisible;
                });
              },
              icon: Icon(
                _passwordVisible ? Icons.visibility : Icons.visibility_off,
                color: AppColor.greyish,
              ),
            ),
            errorMsg: 'Field cannot be empty',
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
          ),
          verticalSpace(16.0),
          CustomTextField(
            controller: context.read<AuthCubit>().confirmPasswordController,
            obscureText: _confirmPasswordVisible,
            hintText: 'Confirm Password',
            prefixIcon: const Icon(Icons.lock, color: AppColor.greyish),
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  _confirmPasswordVisible = !_confirmPasswordVisible;
                });
              },
              icon: Icon(
                _confirmPasswordVisible
                    ? Icons.visibility
                    : Icons.visibility_off,
                color: AppColor.greyish,
              ),
            ),
            errorMsg: 'Field cannot be empty',
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.done,
          ),
          verticalSpace(16.0),
          CustomDropDownList(
            hintText: 'Role',
            prefixWidget: const Icon(
              Icons.groups,
              color: AppColor.greyish,
            ),
            onChanged: (value) {
              setState(() {
                roleSelected = value ?? '';
                context.read<AuthCubit>().roleController.text = value!;
              });
            },
            items: const ['User', 'Admin'],
            selectedItem: roleSelected,
            errorMsg: 'Choose a role',
          ),
        ],
      ),
    );
  }
}
