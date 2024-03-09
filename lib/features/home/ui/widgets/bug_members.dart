import 'package:bug_tracking/core/helpers/cache_helper.dart';

import 'package:bug_tracking/core/style/app_color.dart';
import 'package:flutter/material.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/features/home/data/models/bugs_response_body.dart';

class BugMembers extends StatelessWidget {
  final BugModel bug;
  const BugMembers({super.key,required this.bug});
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
                CacheHelper.userId,
                style: AppTexts.text10PrimaryNunitoSansSemiBold,
              ),
            ),
          ),
          CircleAvatar(
            backgroundColor: const Color(0xffD9D9D9),
            radius: 17,
            child: Text(
              CacheHelper.userId.toShortcutEachWord(),
              style: AppTexts.text10PrimaryNunitoSansSemiBold,
            ),
          ),
        ],
      ),
    );
  }
}
