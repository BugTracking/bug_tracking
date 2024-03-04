import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/router/routes.dart';
import 'package:bug_tracking/core/widgets/custom_button.dart';
import 'package:bug_tracking/core/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddBugProjectButtons extends StatefulWidget {
  const AddBugProjectButtons({Key? key}) : super(key: key);

  @override
  State<AddBugProjectButtons> createState() => _AddBugProjectButtonsState();
}

class _AddBugProjectButtonsState extends State<AddBugProjectButtons> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.0.h, left: 20.0.w, right: 20.0.w),
      child: Column(
        children: [
          verticalSpace(20),
          CustomButton(
            onPressed: () => context.push(Routes.addBug),
            text: 'Add Bug',
          ),
          verticalSpace(16),
          CustomOutlinedButton(
            onPressed: () => context.push(Routes.addProject),
            text: 'Add Project',
          ),
        ],
      ),
    );
  }
}
