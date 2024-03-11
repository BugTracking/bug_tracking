import 'package:bug_tracking/features/home/data/models/user_response_body.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'member_state.freezed.dart';

@freezed
class MembersState with _$MembersState {
  const factory MembersState.initial() = _Initial;

   const factory MembersState.loading() = Loading;

  const factory MembersState.success() = Success;

  const factory MembersState.error({required String message}) = Error;

  const factory MembersState.getMemberLoading() = getMemberLoading;

  const factory MembersState.getMemberFailure(String message) =
      getMemberFailure;

  const factory MembersState.getMemberSuccess(List<UserModel> member) =
      getMemberSuccess;
}
