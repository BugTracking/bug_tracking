import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/router/routes.dart';
import 'package:bug_tracking/features/home/data/models/project_response_body.dart';
import 'package:bug_tracking/features/home/logic/cubit/home_cubit.dart';
import 'package:bug_tracking/features/home/logic/cubit/home_state.dart';
import 'package:bug_tracking/features/home/ui/widgets/latest_project_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bug_tracking/core/widgets/custom_text_button.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LatestProjects extends StatelessWidget {
  const LatestProjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit,HomeState>(
      builder: (context,state) {
        ProjectModel project = context.read<HomeCubit>().projects[1];
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Latest Project',
                  style: AppTexts.text16OnBackgroundNunitoSansBold,
                ),
                CustomTextButton(
                  onPressed: () => context.push(Routes.allProjects),
                  text: 'View All',
                ),
              ],
            ),
            verticalSpace(5),
             LatestProjectBody(project:project),
          ],
        );
      }
    );
  }
}
