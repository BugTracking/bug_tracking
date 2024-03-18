import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/router/routes.dart';
import 'package:bug_tracking/core/router/screen_args.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/core/widgets/custom_text_button.dart';
import 'package:bug_tracking/features/home/logic/cubit/home_cubit.dart';
import 'package:bug_tracking/features/home/logic/cubit/home_state.dart';
import 'package:bug_tracking/features/home/ui/widgets/latest_bugs_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LatestBugs extends StatelessWidget {

  const LatestBugs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit,HomeState>(
      builder: (context,state){
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Latest Bugs',
                style: AppTexts.text16OnBackgroundNunitoSansBold,
              ),
              CustomTextButton(
                  onPressed: () => context.push(
                        Routes.allBugs,
                        arguments: BugsScreenArgs(context.read<HomeCubit>().bugs ?? [])
                      ),
                  text: 'View All'),
            ],
          ),
          verticalSpace(5),
          const LatestBugsList(),
        ],
      );
      }
    );
  }
}

