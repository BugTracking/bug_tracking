import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class SettingsAvatar extends StatefulWidget {
  const SettingsAvatar({Key? key}) : super(key: key);

  @override
  State<SettingsAvatar> createState() => _SettingsAvatarState();
}

class _SettingsAvatarState extends State<SettingsAvatar> {
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
                : const AssetImage("assets/images/avatar.png") as ImageProvider,
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
