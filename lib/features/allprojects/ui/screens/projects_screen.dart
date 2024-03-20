import 'package:bug_tracking/core/di/dependency_injection.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/features/allprojects/logic/cubit/projects_cubit.dart';
import 'package:bug_tracking/features/allprojects/logic/cubit/projects_states.dart';
import 'package:bug_tracking/features/allprojects/ui/widgets/project_list.dart';
import 'package:bug_tracking/features/filter/screen/project_filter_screen.dart';
import 'package:bug_tracking/features/home/data/models/project_response_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectsScreen extends StatelessWidget {
  final List<ProjectModel> projects;
  const ProjectsScreen({Key? key, required this.projects}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProjectsCubit>(),
      child: BlocBuilder<ProjectsCubit, ProjectStates>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Projects'),
              actions: [
                IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (_) => BlocProvider.value(
                        value: context.read<ProjectsCubit>(),
                        child: ProjectFilterScreen(
                          projects: projects,
                        ),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.settings_input_component_outlined,
                    color: AppColor.blackish,
                    size: 25,
                  ),
                ),
              ],
            ),
            body: BlocBuilder<ProjectsCubit, ProjectStates>(
                builder: (context, state) {
              ProjectsCubit cubit = context.read<ProjectsCubit>();
              if ((cubit.filterdList != null && cubit.filterdList!.isEmpty) ||
                  projects.isEmpty) {
                return Center(
                  child: Text(
                    'No Projects Found',
                    style: AppTexts.text16OnBackgroundNunitoSansBold,
                  ),
                );
              }
              return Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.0.w,
                  vertical: 20.0.h,
                ),
                child: ProjectList(
                  projects: context.read<ProjectsCubit>().filterdList != null
                      ? context.read<ProjectsCubit>().filterdList ?? []
                      : projects,
                ),
              );
            }),
          );
        },
      ),
    );
  }
}
