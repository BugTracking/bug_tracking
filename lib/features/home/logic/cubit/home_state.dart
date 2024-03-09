import 'package:bug_tracking/features/home/data/models/user_response_body.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.getUserLoading() = GetUserLoading;

  const factory HomeState.getUserFailure(String message) = GetUserFailure;

  const factory HomeState.getUserSuccess(UserData user) = GetUserSuccess;
}
