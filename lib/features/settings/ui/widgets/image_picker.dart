
import 'dart:io';

import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/features/edit_profile/data/models/user_response_model.dart';

import 'package:bug_tracking/features/edit_profile/logic/cubit/edit_profile_cubit.dart';
import 'package:bug_tracking/features/edit_profile/logic/cubit/edit_profile_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/data/app_data.dart';



class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({Key? key}) : super(key: key);

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}
class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  final ImagePicker picker = ImagePicker();
  XFile? image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115.h,
      width: 115.w,
      child: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.expand,
        children: [
          CircleAvatar(
            backgroundImage: image != null
                ? FileImage(File(image!.path))
                : const AssetImage("assets/images/avatar.png")
            as ImageProvider,
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
