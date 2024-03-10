import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/router/routes.dart';
import 'package:bug_tracking/core/router/screen_args.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/widgets/custom_divider.dart';
import 'package:bug_tracking/core/widgets/custom_list_title.dart';
import 'package:bug_tracking/core/widgets/custom_loading_indicator.dart';
import 'package:bug_tracking/core/widgets/custom_project_info_text.dart';
import 'package:bug_tracking/features/home/data/models/project_response_body.dart';
import 'package:bug_tracking/features/project_details/data/models/project_details_response.dart';
import 'package:bug_tracking/features/project_details/logic/cubit/project_details_cubit.dart';
import 'package:bug_tracking/features/project_details/logic/cubit/project_details_state.dart';
import 'package:bug_tracking/features/project_details/ui/widgets/project_details_app_bar_title.dart';
import 'package:bug_tracking/features/project_details/ui/widgets/project_details_bugs_list.dart';
import 'package:bug_tracking/features/project_details/ui/widgets/project_details_desc.dart';
import 'package:bug_tracking/features/project_details/ui/widgets/project_details_members.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectDetailsScreen extends StatelessWidget {
  final ProjectDetailsScreenArgs args;

  const ProjectDetailsScreen({
    super.key,
    required this.args,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ProjectDetailsAppBarTitle(
          args: args,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.bluish,
        foregroundColor: Colors.white,
        onPressed: () => context.push(
          Routes.addBug,
          arguments: AddBugScreenArgs(args.projectId),
        ),
        child: const Icon(
          Icons.add,
        ),
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
          ProjectDetailsModel projectDetails = cubit.projectDetailsModel!;
          ProjectModel project = projectDetails.project;

          return SingleChildScrollView(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(vertical: 20.0.h, horizontal: 10.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomProjectInfo(
                    lastUpdateOnText: project.lastUpdatedAt.extractDate(),
                    updatedByText: project.lastUpdatedBy.name.toShortcut(),
                    createdByText: project.creator.name,
                    createdAtText: project.timeCreated.extractDate(),
                  ),
                  verticalSpace(10.0),
                  const CustomDivider(),
                  const CustomListTitle(
                    title: 'Description',
                  ),
                  ProjectDetailsDesc(
                    description: project.description,
                  ),
                  CustomListTitle(
                    onPressed: () => context.push(
                      Routes.projectBugs,
                      arguments: ProjectBugsScreenArgs(
                        projectDetails.bugs,
                        project.title,
                      ),
                    ),
                    title: 'Bugs',
                  ),
                  verticalSpace(10.0),
                  ProjectDetailsBugsList(
                    bugs: projectDetails.bugs,
                  ),
                  const CustomListTitle(
                    title: 'Members',
                  ),
                  ProjectDetailsMembers(
                    members: projectDetails.members,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
