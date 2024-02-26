import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

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
          InkWell(
            onTap: () async {
              image = await picker.pickImage(source: ImageSource.gallery);
              setState(() {
                // Update UI
              });
            },
            child: CircleAvatar(
              backgroundImage: image != null
                  ? FileImage(File(image!.path))
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
                color: Colors.blue,
                size: 40.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
