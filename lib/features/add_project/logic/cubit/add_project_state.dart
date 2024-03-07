import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_project_state.freezed.dart';

@freezed
class AddProjectState with _$AddProjectState {
  const factory AddProjectState.initial() = _Initial;

  const factory AddProjectState.loading() = Loading;

  const factory AddProjectState.success() = Success;

  const factory AddProjectState.error({required String message}) = Error;

  const factory AddProjectState.selectMembersLoading() = SelectMembersLoading;

  const factory AddProjectState.selectMembersSuccess() = SelectMembersSuccess;
}
