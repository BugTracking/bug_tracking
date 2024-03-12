import 'package:bug_tracking/features/edit_profile/logic/cubit/edit_profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/widgets/custom_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditForm extends StatefulWidget {
  const EditForm({Key? key}) : super(key: key);

  @override
  State<EditForm> createState() => _EditFormState();
}

class _EditFormState extends State<EditForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key:  context.read<EditProfileCubit>().formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomTextField(
            controller:  context.read<EditProfileCubit>().nameController,
            hintText: 'Name',
            prefixIcon: const Icon(
              Icons.person,
              color: AppColor.greyish,
            ),
            errorMsg: 'Field cannot be empty',
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.done,
          ),
          verticalSpace(16.0),
          CustomTextField(
            controller:  context.read<EditProfileCubit>().userNameController,
            hintText: 'User Name',
            prefixIcon: const Icon(
              Icons.person,
              color: AppColor.greyish,
            ),
            errorMsg: 'Field cannot be empty',
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.done,
          ),
          verticalSpace(16.0),
          CustomTextField(
            controller:  context.read<EditProfileCubit>().emailController,
            hintText: 'Email',
            prefixIcon: const Icon(
              Icons.email,
              color: AppColor.greyish,
            ),
            errorMsg: 'Field cannot be empty',
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.done,
          ),
          verticalSpace(16.0),

        ],
      ),
    );
  }
}
