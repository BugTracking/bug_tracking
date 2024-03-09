import 'package:bloc/bloc.dart';
import 'package:bug_tracking/features/project_details/data/models/project_details_response.dart';
import 'package:bug_tracking/features/project_details/data/repos/project_details_repo.dart';
import 'package:bug_tracking/features/project_details/logic/cubit/project_details_state.dart';
import 'package:flutter/material.dart';

class ProjectDetailsCubit extends Cubit<ProjectDetailsState> {
  final ProjectDetailsRepo _projectDetailsRepo;
  ProjectDetailsCubit(this._projectDetailsRepo)
      : super(const ProjectDetailsState.initial());

  ProjectDetailsModel? projectDetailsModel;
  final TextEditingController projectTitleController = TextEditingController();
  final TextEditingController projectDescriptionController =
      TextEditingController();

  final formKey = GlobalKey<FormState>();
  String? projectStatus;
  void emitProjectDetailsState(String projectId) async {
    emit(const ProjectDetailsState.loading());
    final result = await _projectDetailsRepo.getProjectDetails(projectId);
    result.when(
      success: (response) {
        projectDetailsModel = response.data;
        projectTitleController.text = projectDetailsModel!.project.title;
        projectDescriptionController.text =
            projectDetailsModel!.project.description;
        projectStatus = projectDetailsModel!.project.status;
        emit(ProjectDetailsState.success(response));
      },
      failure: (message) {
        emit(ProjectDetailsState.failure(message: message));
      },
    );
  }

  void emitChangeProjectState(String value) {
    projectStatus = value;
    emit(const ProjectDetailsState.changeProjectStateSuccess());
  }
}
