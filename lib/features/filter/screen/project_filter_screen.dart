import 'package:bug_tracking/core/helpers/constants.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/core/widgets/custom_divider.dart';
import 'package:bug_tracking/features/allprojects/logic/cubit/projects_cubit.dart';
import 'package:bug_tracking/features/allprojects/logic/cubit/projects_states.dart';
import 'package:bug_tracking/features/filter/widgets/filter_box.dart';
import 'package:bug_tracking/features/filter/widgets/filter_container.dart';
import 'package:bug_tracking/features/filter/widgets/project_filter_submit.dart';
import 'package:bug_tracking/features/home/data/models/project_response_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectFilterScreen extends StatelessWidget {
  final List<ProjectModel> projects;
  const ProjectFilterScreen({super.key, required this.projects});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectsCubit, ProjectStates>(
      builder: (context, state) {
        ProjectsCubit cubit = context.read<ProjectsCubit>();
        return Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 50.0.h,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const FilterBox(),
                        verticalSpace(20.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Project Name ",
                              style: AppTexts.text14PrimaryNunitoSansBold,
                            ),
                            verticalSpace(10.0),
                            Wrap(
                              runSpacing: 8.0,
                              children: [
                                FilterContainer(
                                  text: 'All Projects',
                                  isSelected: cubit.projectNameSelected ==
                                      'All Projects',
                                  onTap: () =>
                                      cubit.selectProjectName('All Projects'),
                                ),
                                ...projects.map(
                                  (e) => FilterContainer(
                                    text: e.title,
                                    isSelected:
                                        cubit.projectNameSelected == e.title,
                                    onTap: () =>
                                        cubit.selectProjectName(e.title),
                                  ),
                                ),
                              ],
                            ),
                            verticalSpace(15.0),
                            const CustomDivider(),
                            Wrap(
                              runSpacing: 8.0,
                              children: [
                                FilterContainer(
                                  text: 'All Statuses',
                                  isSelected: cubit.projectStatusSelected ==
                                      'All Statuses',
                                  onTap: () =>
                                      cubit.selectProjectStatus('All Statuses'),
                                ),
                                ...[
                                  openStatus,
                                  closedStatus,
                                  notStartedYetStatus
                                ].map(
                                  (e) => FilterContainer(
                                    text: e,
                                    isSelected:
                                        cubit.projectStatusSelected == e,
                                    onTap: () => cubit.selectProjectStatus(e),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        verticalSpace(30.0),
                      ],
                    ),
                  ),
                ),
                verticalSpace(10.0),
                ProjectFilterSubmit(
                  projects: projects,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
