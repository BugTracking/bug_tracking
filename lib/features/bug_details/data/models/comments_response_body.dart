import 'package:bug_tracking/features/home/data/models/user_response_body.dart';
import 'package:json_annotation/json_annotation.dart';
part 'comments_response_body.g.dart';

@JsonSerializable()
class CommentsResponseBody {
  final bool status;
  final String? message;
  final List<CommentData>? data;

  CommentsResponseBody(this.status, this.message, this.data);

  factory CommentsResponseBody.fromJson(Map<String, dynamic> json) =>
      _$CommentsResponseBodyFromJson(json);
}

@JsonSerializable()
class CommentData {
  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'userId')
  final UserModel user;
  final String time;
  final String bugId;
  @JsonKey(name: 'commentId')
  final CommentModel comment;

  CommentData(this.id, this.user, this.time, this.bugId, this.comment);

  factory CommentData.fromJson(Map<String, dynamic> json) =>
      _$CommentDataFromJson(json);
}

@JsonSerializable()
class CommentModel {
  @JsonKey(name: '_id')
  final String id;
  final String content;

  CommentModel(this.id, this.content);

  factory CommentModel.fromJson(Map<String, dynamic> json) =>
      _$CommentModelFromJson(json);
}
