import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:flutter/material.dart';
import 'package:bug_tracking/core/style/app_texts.dart';

class CustomMemebrsCilrcles extends StatelessWidget {
  final String mainName;
  final String subName;
  const CustomMemebrsCilrcles(
      {super.key, required this.mainName, required this.subName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          if (mainName != subName)
            Positioned(
              bottom: 0,
              top: -1,
              right: -15,
              child: CircleAvatar(
                backgroundColor: AppColor.darkGreyish,
                radius: 13,
                child: Text(
                  subName.toShortcutEachWord(),
                  style: AppTexts.text10PrimaryNunitoSansSemiBold,
                ),
              ),
            ),
          CircleAvatar(
            backgroundColor: const Color(0xffD9D9D9),
            radius: 17,
            child: Text(
              mainName.toShortcutEachWord(),
              style: AppTexts.text10PrimaryNunitoSansSemiBold,
            ),
          ),
        ],
      ),
    );
  }
}
