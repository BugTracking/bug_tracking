import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/features/edit_profile/logic/cubit/edit_profile_cubit.dart';
import 'package:bug_tracking/features/edit_profile/logic/cubit/edit_profile_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({Key? key}) : super(key: key);

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditProfileCubit, EditProfileState>(
        builder: (context, state) {
      EditProfileCubit cubit = context.read<EditProfileCubit>();
      return SizedBox(
        height: 115.h,
        width: 115.w,
        child: Stack(
          clipBehavior: Clip.none,
          fit: StackFit.expand,
          children: [
            InkWell(
              onTap: () {
                context.read<EditProfileCubit>().emitUploadAttachmentsState();
                setState(() {});
              },
              child: CircleAvatar(
                backgroundImage: cubit.avatarAttach != null
                    ? FileImage(cubit.avatarAttach!)
                    : const AssetImage("assets/images/avatar.png")
                        as ImageProvider,
                backgroundColor: Colors.white,
              ),
            ),
            Positioned(
              bottom: 0,
              right: -25,
              child: RawMaterialButton(
                onPressed: () {},
                elevation: 2.0,
                padding: const EdgeInsets.all(2.0),
                shape: const CircleBorder(),
                child: const Icon(
                  Icons.camera_alt_rounded,
                  color: AppColor.bluish,
                  size: 40.0,
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
