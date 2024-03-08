import 'package:bug_tracking/features/allprojects/data/model/project_response_body.dart';
import 'package:bug_tracking/features/allprojects/logic/cubit/projects_cubit.dart';
import 'package:flutter/material.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/features/allprojects/ui/widgets/project_tile.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectList extends StatelessWidget {
  const ProjectList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("herrrreeeeeeee");
    print(context.read<ProjectsCubit>().projects.length);
    return SafeArea(
      child: ListView.separated(
        itemBuilder: (context, index) {
          ProjectModel project = context.read<ProjectsCubit>().projects[index];
          return ProjectTile(project: project);
        },
        clipBehavior: Clip.none,
        separatorBuilder: (context, index) => verticalSpace(20.0),
        shrinkWrap: true,
        itemCount: context.read<ProjectsCubit>().projects.length,
      ),
    );
  }
}
