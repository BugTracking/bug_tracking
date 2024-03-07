import 'package:bug_tracking/features/allprojects/data/model/project_response_body.dart';
import 'package:bug_tracking/features/allprojects/data/repos/allproject_repos.dart';
import 'package:bug_tracking/features/allprojects/logic/cubit/projects_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectCubit extends Cubit<ProjectStates> {
  final ProjectsRepo _projectsRepo;

  ProjectCubit(this._projectsRepo) : super(const ProjectStates.initial());

  List<ProjectModel> projects = [];
  void emitProjectData() async {
    final response = await _projectsRepo.getProjects();
    response.when(
      success: (data) {
        projects = data.data ?? [];
        emit(ProjectStates.getProjectsSuccess(data.data ?? []));
      },
      failure: (error) {
        emit(ProjectStates.getProjectsFailure(error.apiErrorModel.message));
      },
    );
  }
}
