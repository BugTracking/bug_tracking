import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/features/home/data/models/bugs_response_body.dart';
import 'package:flutter/material.dart';
import 'package:bug_tracking/features/home/ui/widgets/latest_bugs_tile.dart';
import 'package:bug_tracking/features/home/logic/cubit/home_cubit.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class LatestBugsList extends StatelessWidget {
  const LatestBugsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<BugModel> bug = context.read<HomeCubit>().bugs ?? [];
    return SafeArea(
      child: ListView.separated(
        itemBuilder: (context, index) {
          if(bug.isEmpty){
            return Text('No Bugs Yet',style: AppTexts.text16OnBackgroundNunitoSansBold,textAlign:TextAlign.center,);
          }
          else{
            BugModel bugs= bug[index];
            return  LatestBugTile(bug:bugs);
          }

        },
        clipBehavior: Clip.none,
        separatorBuilder: (context, index) => verticalSpace(20.0),
        shrinkWrap: true,
        itemCount: bug.isEmpty ? 1 : bug.length,
        physics: const NeverScrollableScrollPhysics(),
      ),
    );
  }
}
