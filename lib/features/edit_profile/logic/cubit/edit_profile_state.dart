import 'package:bug_tracking/features/home/data/models/user_response_body.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'edit_profile_state.freezed.dart';

@freezed
class EditProfileState with _$EditProfileState {
  const factory EditProfileState.initial() = _Initial;

  const factory EditProfileState.getUserLoading() = GetUserLoading;

  const factory EditProfileState.getUserFailure(String message) = GetUserFailure;

  const factory EditProfileState.getUserSuccess(UserData user) = GetUserSuccess;

  const factory EditProfileState.getUserEditLoading() = GetUserEditLoading;

  const factory EditProfileState.getUserEditFailure(String message) = GetUserEditFailure;

  const factory EditProfileState.getUserEditSuccess(String message) = GetUserEditSuccess;



}
