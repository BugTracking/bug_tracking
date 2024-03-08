import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/router/routes.dart';
import 'package:bug_tracking/core/widgets/custom_divider.dart';
import 'package:bug_tracking/core/widgets/custom_list_title.dart';
import 'package:bug_tracking/core/widgets/custom_loading_indicator.dart';
import 'package:bug_tracking/core/widgets/custom_project_info_text.dart';
import 'package:bug_tracking/features/project_details/logic/cubit/project_details_cubit.dart';
import 'package:bug_tracking/features/project_details/logic/cubit/project_details_state.dart';
import 'package:bug_tracking/features/project_details/ui/widgets/project_details_app_bar_title.dart';
import 'package:bug_tracking/features/project_details/ui/widgets/project_details_bugs_list.dart';
import 'package:bug_tracking/features/project_details/ui/widgets/project_details_members.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectDetailsScreen extends StatelessWidget {
  final String projectId;
  final String projectTitle;

  const ProjectDetailsScreen({
    super.key,
    required this.projectId,
    required this.projectTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const ProjectDetailsAppBarTitle(),
      ),
      body: BlocBuilder<ProjectDetailsCubit, ProjectDetailsState>(
        builder: (context, state) {
          ProjectDetailsCubit cubit = context.read<ProjectDetailsCubit>();
          if (cubit.projectDetailsModel == null) {
            return const Center(
              child: CustomLoadingIndicator(
                size: 60,
              ),
            );
          }
          return SingleChildScrollView(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(vertical: 20.0.h, horizontal: 10.0.w),
              child: Column(
                children: [
                  const CustomProjectInfo(
                    lastUpdateOnText: '4/10/2024',
                    updatedByText: 'Mohammed Adel',
                    createdByText: 'Mohammed Adel',
                    createdAtText: '1/10/2024',
                  ),
                  verticalSpace(10.0),
                  const CustomDivider(),
                  CustomListTitle(
                    onPressed: () {},
                    title: 'Bugs',
                  ),
                  verticalSpace(10.0),
                  const ProjectDetailsBugsList(),
                  CustomListTitle(
                    onPressed: () => context.push(Routes.members),
                    title: 'Members',
                  ),
                  const ProjectDetailsMembers(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
