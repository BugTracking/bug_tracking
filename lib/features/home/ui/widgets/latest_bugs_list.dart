import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/core/widgets/custom_shimmer.dart';
import 'package:bug_tracking/features/home/data/models/bugs_response_body.dart';
import 'package:flutter/material.dart';
import 'package:bug_tracking/features/home/ui/widgets/latest_bugs_tile.dart';
import 'package:bug_tracking/features/home/logic/cubit/home_cubit.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LatestBugsList extends StatelessWidget {
  const LatestBugsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    if(context.read<HomeCubit>().bugs == null){
      return  CustomShimmer(
        height: 20.h,
      );
    }
    else if(context.read<HomeCubit>().bugs!.isEmpty){
      return Text('No bugs Assigned Yet',
        style: AppTexts.text21OnBackgroundColorNunitoSansBold,);

    }
    final List<BugModel> bug = context.read<HomeCubit>().bugs ?? [];
    return SafeArea(
      child: ListView.separated(
        itemBuilder: (context, index) {
          int reverseIndex=bug.length-1-index;
            BugModel bugs= bug[reverseIndex];
            return  LatestBugTile(bug:bugs);

        },
        clipBehavior: Clip.none,
        separatorBuilder: (context, index) => verticalSpace(20.0),
        shrinkWrap: true,
        itemCount: bug.length>4 ? 4 : bug.length,
        physics: const NeverScrollableScrollPhysics(),
      ),
    );
  }
}
