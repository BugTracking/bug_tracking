import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/features/home/logic/cubit/home_cubit.dart';
import 'package:bug_tracking/features/home/logic/cubit/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BugProjectContainers extends StatelessWidget {
  const BugProjectContainers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit,HomeState>(
      builder: (context,state) {
        int projectsLen = context.read<HomeCubit>().projects.length;
        int bugsLen = context.read<HomeCubit>().bugs.length;
        return Row(
          children: [
            Container(
              height: 87.h,
              width: 166.5.w,
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColor.bluish,
                  width: 0.9,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    projectsLen.toString(),
                    style: AppTexts.text14PrimaryNunitoSansBold,
                  ),
                  Text(
                    'Projects',
                    style: AppTexts.text14OnBackgroundCairoSemiBold,
                  ),
                ],
              ),
            ),
            horizontalSpace(10),
            Container(
              height: 87.h,
              width: 166.5.w,
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColor.bluish,
                  width: 0.9,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    bugsLen.toString(),
                    style: AppTexts.text14PrimaryNunitoSansBold,
                  ),
                  Text(
                    'Bugs',
                    style: AppTexts.text14OnBackgroundCairoSemiBold,
                  ),
                ],
              ),
            ),
          ],
        );
      }
    );
  }
}
