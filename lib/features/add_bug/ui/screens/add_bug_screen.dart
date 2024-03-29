import 'package:bug_tracking/core/data/app_data.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/features/add_bug/ui/widgets/add_bug_attachments.dart';
import 'package:bug_tracking/features/add_bug/ui/widgets/add_bug_form.dart';
import 'package:bug_tracking/features/add_bug/ui/widgets/add_bug_members_selected.dart';
import 'package:bug_tracking/features/add_bug/ui/widgets/assigned_to_container.dart';
import 'package:bug_tracking/features/add_bug/ui/widgets/create_another_issue.dart';
import 'package:bug_tracking/features/add_bug/ui/widgets/save_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddBugScreen extends StatelessWidget {
  final String projectId;
  const AddBugScreen({
    super.key,
    required this.projectId,
  });

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
                const AddBugAttachments(),
                verticalSpace(10.0),
                const AddBugForm(),
                verticalSpace(10.0),
                if (userData.user.role == 'Admin')
                  Column(
                    children: [
                      const AssignedToContainer(),
                      verticalSpace(10.0),
                      const AddBugMembersSelected(),
                      verticalSpace(10.0),
                    ],
                  ),
                const CreateAnotherIssue(),
                verticalSpace(16),
                SaveButton(
                  projectId: projectId,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
