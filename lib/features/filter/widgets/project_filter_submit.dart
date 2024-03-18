import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/features/allprojects/logic/cubit/projects_cubit.dart';
import 'package:bug_tracking/features/filter/widgets/filter_buttons.dart';
import 'package:bug_tracking/features/home/data/models/project_response_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectFilterSubmit extends StatelessWidget {
  final List<ProjectModel> projects;
  const ProjectFilterSubmit({super.key, required this.projects});

  @override
  Widget build(BuildContext context) {
    return FilterButtons(
      resetOnPressed: () {
        context.read<ProjectsCubit>().emitResetFilter();
        context.pop();
      },
      applyOnPressed: () {
        context.read<ProjectsCubit>().emitFilteredList(projects);
        context.pop();
      },
    );
  }
}
