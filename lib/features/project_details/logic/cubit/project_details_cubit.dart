import 'package:bloc/bloc.dart';
import 'package:bug_tracking/features/project_details/data/models/project_details_response.dart';
import 'package:bug_tracking/features/project_details/data/repos/project_details_repo.dart';
import 'package:bug_tracking/features/project_details/logic/cubit/project_details_state.dart';

class ProjectDetailsCubit extends Cubit<ProjectDetailsState> {
  final ProjectDetailsRepo _projectDetailsRepo;
  ProjectDetailsCubit(this._projectDetailsRepo)
      : super(const ProjectDetailsState.initial());

  ProjectDetailsModel? projectDetailsModel;

  void emitProjectDetailsState(String projectId) async {
    emit(const ProjectDetailsState.loading());
    final result = await _projectDetailsRepo.getProjectDetails(projectId);
    result.when(
      success: (response) {
        projectDetailsModel = response.data;
        emit(ProjectDetailsState.success(response));
      },
      failure: (message) {
        emit(ProjectDetailsState.failure(message: message));
      },
    );
  }
}
