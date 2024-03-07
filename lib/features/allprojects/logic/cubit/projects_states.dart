import 'package:bug_tracking/features/allprojects/data/model/project_response_body.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'projects_states.freezed.dart';
@freezed
class ProjectStates with _$ProjectStates{
  const factory ProjectStates.initial() = _Initial;
  const factory ProjectStates.getProjectsLoading() = getProjectsLoading;
  const factory ProjectStates.getProjectsFailure(String message) =
      getProjectsFailure;

  const factory ProjectStates.getProjectsSuccess(ProjectModel user) =
      getProjectsSuccess;
}
