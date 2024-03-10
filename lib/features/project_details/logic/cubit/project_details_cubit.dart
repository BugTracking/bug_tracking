import 'package:bloc/bloc.dart';
import 'package:bug_tracking/core/helpers/constants.dart';
import 'package:bug_tracking/features/project_details/data/models/project_details_response.dart';
import 'package:bug_tracking/features/project_details/data/models/project_edit_request_body.dart';
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
        emit(ProjectDetailsState.success(response));
      },
      failure: (message) {
        emit(ProjectDetailsState.failure(message: message));
      },
    );
  }

  void emitEditProjectState(String projectId) async {
    if (formKey.currentState!.validate() || projectStatus == null) {
      emit(const ProjectDetailsState.editProjectLoading());
      final result = await _projectDetailsRepo.editProject(
        projectId,
        ProjectEditRequestBody(
          title: projectTitleController.text,
          description: projectDescriptionController.text,
          status: projectStatus ?? openStatus,
        ),
      );
      result.when(
        success: (response) {
          emit(ProjectDetailsState.editProjectSuccess(response.message));
          emitProjectDetailsState(projectId);
        },
        failure: (error) {
          emit(ProjectDetailsState.editProjectFailure(error));
        },
      );
    }
  }

  void emitChangeProjectStatusState(String value) {
    projectStatus = value;
    emit(const ProjectDetailsState.changeProjectStatusSuccess());
  }
}
