import 'package:json_annotation/json_annotation.dart';
part 'add_comment_request_body.g.dart';

@JsonSerializable()
class AddCommentRequestBody {
  final String content;
  final String bugId;

  AddCommentRequestBody(this.content, this.bugId);

  Map<String, dynamic> toJson() => _$AddCommentRequestBodyToJson(this);
}
