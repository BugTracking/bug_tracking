import 'package:bug_tracking/core/style/app_color.dart';
import 'package:flutter/material.dart';
import 'package:bug_tracking/core/style/app_texts.dart';

class BugMembers extends StatelessWidget {
  const BugMembers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            bottom: 0,
            top: -1,
            right: -15,
            child: CircleAvatar(

              backgroundColor:AppColor.darkGreyish,
              radius: 13,
              child: Text(
                'MR',
                style: AppTexts.text10PrimaryNunitoSansSemiBold,
              ),
            ),
          ),
          CircleAvatar(
            backgroundColor: const Color(0xffD9D9D9),
            radius: 17,
            child: Text(
              'MR',
              style: AppTexts.text10PrimaryNunitoSansSemiBold,
            ),
          ),
        ],
      ),
    );
  }
}
