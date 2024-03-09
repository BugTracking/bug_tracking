import 'package:bug_tracking/features/project_details/data/models/project_details_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'project_details_state.freezed.dart';

@freezed
class ProjectDetailsState with _$ProjectDetailsState {
  const factory ProjectDetailsState.initial() = _Initial;

  const factory ProjectDetailsState.loading() = Loading;

  const factory ProjectDetailsState.failure({required String message}) =
      Failure;

  const factory ProjectDetailsState.success(ProjectDetailsResponse response) =
      Success;

  const factory ProjectDetailsState.changeProjectStateSuccess() =
      ChangeProjectStateSuccess;
}
