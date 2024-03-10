import 'package:bug_tracking/features/bug_details/data/models/add_comment_response_body.dart';
import 'package:bug_tracking/features/bug_details/data/models/bug_details_response_body.dart';
import 'package:bug_tracking/features/bug_details/data/models/comments_response_body.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'bug_details_state.freezed.dart';

@freezed
class BugDetailsState with _$BugDetailsState {
  const factory BugDetailsState.initial() = _Initial;

  const factory BugDetailsState.loading() = Loading;

  const factory BugDetailsState.success(
      {required BugDetailsResponseBody data}) = Success;

  const factory BugDetailsState.failure({required String error}) = Failure;

  const factory BugDetailsState.commentsLoading() = CommentsLoading;

  const factory BugDetailsState.commentsSuccess(
      {required CommentsResponseBody data}) = CommentsSuccess;

  const factory BugDetailsState.commentsFailure({required String error}) =
      CommentsFailure;

  const factory BugDetailsState.addCommentsLoading() = AddCommentLoading;

  const factory BugDetailsState.addCommentsSuccess(
      {required AddCommentResponseBody data}) = AddCommentSuccess;

  const factory BugDetailsState.addCommentsFailure({required String error}) =
      AddCommentFailure;
}
