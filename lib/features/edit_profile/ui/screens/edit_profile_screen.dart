import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/features/edit_profile/logic/cubit/edit_profile_cubit.dart';
import 'package:bug_tracking/features/edit_profile/ui/widgets/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/features/edit_profile/ui/widgets/edit_form.dart';
import 'package:bug_tracking/features/edit_profile/ui/widgets/submit_edit_form.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/dependency_injection.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<EditProfileCubit>(),
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
                'Edit',
                style: AppTexts.text21OnBackgroundColorNunitoSansBold,
              ),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    verticalSpace(10.0),
                    const ImagePickerWidget(),
                    verticalSpace(40.0),
                    const EditForm(),
                    verticalSpace(16.0),
                    const SubmitEditForm(),
                    verticalSpace(17.0),
                  ],
                ),
              ),
            ),
          ),
        ),

    );
  }
}
