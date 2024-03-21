import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/widgets/custom_avatar.dart';
import 'package:bug_tracking/features/edit_profile/logic/cubit/edit_profile_cubit.dart';
import 'package:bug_tracking/features/edit_profile/logic/cubit/edit_profile_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditProfileAvatar extends StatefulWidget {
  const EditProfileAvatar({Key? key}) : super(key: key);

  @override
  State<EditProfileAvatar> createState() => _EditProfileAvatarState();
}

class _EditProfileAvatarState extends State<EditProfileAvatar> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditProfileCubit, EditProfileState>(
        builder: (context, state) {
      EditProfileCubit cubit = context.read<EditProfileCubit>();
      return GestureDetector(
        onTap: () {
          context.read<EditProfileCubit>().emitUploadAttachmentsState();
        },
        child: Stack(
          clipBehavior: Clip.antiAlias,
          alignment: Alignment.center,
          children: [
            CustomAvatar(
              image: cubit.avatarAttach,
            ),
            const Positioned(
              bottom: 2,
              right: 3,
              child: Icon(
                Icons.camera_alt,
                color: AppColor.bluish,
                size: 30,
              ),
            )
          ],
        ),
      );
    });
  }
}
