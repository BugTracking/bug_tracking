import 'package:bug_tracking/features/allprojects/data/model/project_response_body.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'projects_states.freezed.dart';

@freezed
class ProjectStates with _$ProjectStates {
  const factory ProjectStates.initial() = _Initial;
  const factory ProjectStates.getProjectsLoading() = ProjectsLoading;
  const factory ProjectStates.getProjectsFailure(String message) =
      ProjectsFailure;

  const factory ProjectStates.getProjectsSuccess(List<ProjectModel> projects) =
      ProjectsSuccess;
}
