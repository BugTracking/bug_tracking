import 'package:bug_tracking/features/allprojects/logic/cubit/projects_states.dart';
import 'package:bug_tracking/features/home/data/models/project_response_body.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectsCubit extends Cubit<ProjectStates> {
  ProjectsCubit() : super(const ProjectStates.initial());

  String projectNameSelected = 'All Projects';
  String projectStatusSelected = 'All Statuses';

  void selectProjectName(String name) {
    emit(const ProjectStates.initial());
    projectNameSelected = name;
    emit(const ProjectStates.selectProjectName());
  }

  void selectProjectStatus(String status) {
    emit(const ProjectStates.initial());
    projectStatusSelected = status;
    emit(const ProjectStates.selectProjectStatus());
  }

  List<ProjectModel>? filterdList;

  void emitFilteredList(List<ProjectModel> projects) {
    emit(const ProjectStates.initial());
    filterdList = projects.where((element) {
      if (projectNameSelected == 'All Projects' &&
          projectStatusSelected == 'All Statuses') {
        return element.status == projectStatusSelected &&
            element.title == projectNameSelected;
      }
      if (projectNameSelected == 'All Projects') {
        return element.status == projectStatusSelected;
      }
      if (projectStatusSelected == 'All Statuses') {
        return element.title == projectNameSelected;
      }
      return element.status == projectStatusSelected &&
          element.title == projectNameSelected;
    }).toList();
    emit(const ProjectStates.filterProjects());
  }

  void emitResetFilter() {
    emit(const ProjectStates.initial());
    filterdList = null;
    projectNameSelected = 'All Projects';
    projectStatusSelected = 'All Statuses';
    emit(const ProjectStates.filterProjects());
  }
}
