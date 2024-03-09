import 'package:bug_tracking/features/project_details/ui/widgets/project_edit_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectEditBottomSheet extends StatelessWidget {
  final BuildContext context;
  const ProjectEditBottomSheet({super.key, required this.context});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 10.0.h,
        bottom: MediaQuery.of(context).viewInsets.bottom + 10.0.h,
        left: 10.0.w,
        right: 10.0.w,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ProjectEditForm(
            context: this.context,
          ),
        ],
      ),
    );
  }
}
