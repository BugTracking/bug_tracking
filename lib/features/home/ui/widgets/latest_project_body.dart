import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/core/widgets/custom_priority_status_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LatestProjectBody extends StatelessWidget {
  const LatestProjectBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
clipBehavior: Clip.none,
      children:[
        Positioned(
          left: 0,
            child:  CircleAvatar(
            radius: 30,
            child: ClipOval(
              child: Image.asset(
                'assets/images/project.png',
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(left: 65.0.w),
          child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Drug App',
                  style: AppTexts.text16OnBackgroundNunitoSansSemiBold,
                ),
                const CustomPriorityStatusContainer(
                  text: 'Done',
                  color: AppColor.bluish,
                ),
              ],
            ),
            verticalSpace(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Last Update on 20 Jun',
                  style: AppTexts.text8GreyNunitoSansRegular,
                ),
                Text(
                  'Created on 10 May',
                  style: AppTexts.text8GreyNunitoSansRegular,
                ),
              ],
            ),
          ],

                ),
        ),
    ],
    );
  }
}