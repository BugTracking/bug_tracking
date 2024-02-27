import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/features/add_bug/ui/widgets/add_bug_form.dart';
import 'package:bug_tracking/features/add_bug/ui/widgets/assigned_to_container.dart';
import 'package:bug_tracking/features/add_bug/ui/widgets/create_another_issue.dart';
import 'package:bug_tracking/features/add_bug/ui/widgets/save_button.dart';
import 'package:bug_tracking/features/add_bug/ui/widgets/selected_members.dart';

import 'package:bug_tracking/features/add_bug/ui/widgets/upload_attachments.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddBugScreen extends StatelessWidget {
  const AddBugScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Bug'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.only(
              top: 25.0.h,
              left: 20.0.w,
              right: 20.0.w,
              bottom: 20.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const UploadAttachments(),
                verticalSpace(10.0),
                const AddBugForm(),
                verticalSpace(10.0),
                const AssignedToContainer(),
                verticalSpace(10.0),
                const SelectedMembers(),
                verticalSpace(10.0),
                const CreateAnotherIssue(),
                verticalSpace(16),
                const SaveButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}