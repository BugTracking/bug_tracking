import 'package:bug_tracking/features/home/data/models/user_response_body.dart';
import 'package:bug_tracking/features/home/data/models/project_response_body.dart';
import 'package:bug_tracking/features/home/data/models/bugs_response_body.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.getUserLoading() = GetUserLoading;

  const factory HomeState.getUserFailure(String message) = GetUserFailure;

  const factory HomeState.getUserSuccess(UserData user) = GetUserSuccess;

  const factory HomeState.getProjectsLoading() = GetProjectsLoading;

  const factory HomeState.getProjectsFailure(String message) =
      GetProjectsFailure;

  const factory HomeState.getProjectsSuccess(List<ProjectModel> projects) =
      GetProjectsSuccess;

  const factory HomeState.getBugsLoading() = GetBugsLoading;

  const factory HomeState.getBugsFailure(String message) = GetBugsFailure;

  const factory HomeState.getBugsSuccess(List<BugModel> projects) =
      GetBugsSuccess;

  const factory HomeState.setDeviceTokenLoading() = SetDeviceTokenLoading;

  const factory HomeState.setDeviceTokenFailure() = SetDeviceTokenFailure;

  const factory HomeState.setDeviceTokenSuccess() = SetDeviceTokenSuccess;
}
