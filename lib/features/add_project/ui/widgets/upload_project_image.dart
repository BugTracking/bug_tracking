import 'package:bug_tracking/core/widgets/upload_attachments.dart';
import 'package:bug_tracking/features/add_project/logic/cubit/add_project_cubit.dart';
import 'package:bug_tracking/features/add_project/logic/cubit/add_project_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UploadProjectImage extends StatelessWidget {
  const UploadProjectImage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddProjectCubit, AddProjectState>(
      builder: (context, state) {
        AddProjectCubit cubit = context.read<AddProjectCubit>();
        if (cubit.imageFile != null) {
          return InkWell(
            onTap: () => cubit.emitPickImageState(),
            child: Container(
              width: 100.0.w,
              height: 100.0.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0.r),
                image: DecorationImage(
                  image: FileImage(cubit.imageFile!),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        }
        return UploadAttachments(
          title: 'Upload Image',
          onPressed: () => cubit.emitPickImageState(),
        );
      },
    );
  }
}
