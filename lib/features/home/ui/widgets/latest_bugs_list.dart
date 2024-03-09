import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/core/widgets/custom_shimmer_list.dart';
import 'package:bug_tracking/features/home/data/models/bugs_response_body.dart';
import 'package:bug_tracking/features/home/logic/cubit/home_state.dart';
import 'package:flutter/material.dart';
import 'package:bug_tracking/features/home/ui/widgets/latest_bugs_tile.dart';
import 'package:bug_tracking/features/home/logic/cubit/home_cubit.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class LatestBugsList extends StatelessWidget {
  const LatestBugsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        HomeCubit cubit = context.read<HomeCubit>();
        if (cubit.bugs == null) {
          return const CustomShimmerList();
        }
        final List<BugModel> bugs = context.read<HomeCubit>().bugs ?? [];
        if (bugs.isEmpty) {
          return Text(
            'No Bugs Yet',
            style: AppTexts.text16OnBackgroundNunitoSansBold,
            textAlign: TextAlign.center,
          );
        }
        return SafeArea(
          child: ListView.separated(
            itemBuilder: (context, index) {
              final int reverseIndex = bugs.length - index - 1;
              BugModel bug = bugs[reverseIndex];
              return LatestBugTile(bug: bug);
            },
            clipBehavior: Clip.none,
            separatorBuilder: (context, index) => verticalSpace(20.0),
            shrinkWrap: true,
            itemCount: bugs.length > 4 ? 4 : bugs.length,
            physics: const NeverScrollableScrollPhysics(),
          ),
        );
      },
    );
  }
}
