import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/features/add_bug/logic/cubit/add_bug_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddBugAttachmentsList extends StatelessWidget {
  const AddBugAttachmentsList({super.key});

  @override
  Widget build(BuildContext context) {
    AddBugCubit cubit = context.read<AddBugCubit>();
    return SizedBox(
      height: 120.0.h,
      child: ListView.separated(
        itemBuilder: (context, index) => Container(
          height: 120.0.h,
          width: 120.0.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: FileImage(cubit.attachments[index]),
              fit: BoxFit.cover,
            ),
          ),
        ),
        separatorBuilder: (context, index) => horizontalSpace(10.0),
        itemCount: cubit.attachments.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
