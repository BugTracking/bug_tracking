import 'package:bug_tracking/features/bug_details/data/models/comments_response_body.dart';
import 'package:json_annotation/json_annotation.dart';
part 'add_comment_response_body.g.dart';

@JsonSerializable()
class AddCommentResponseBody {
  final bool status;
  final String? message;
  final CommentData? data;

  AddCommentResponseBody(this.status, this.message, this.data);

  factory AddCommentResponseBody.fromJson(Map<String, dynamic> json) =>
      _$AddCommentResponseBodyFromJson(json);
}
