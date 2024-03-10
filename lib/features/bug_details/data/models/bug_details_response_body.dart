import 'package:bug_tracking/features/home/data/models/bugs_response_body.dart';
import 'package:bug_tracking/features/home/data/models/user_response_body.dart';
import 'package:json_annotation/json_annotation.dart';
part 'bug_details_response_body.g.dart';

@JsonSerializable()
class BugDetailsResponseBody {
  final bool status;
  final String? message;
  final BugDetailsModel? data;

  BugDetailsResponseBody(
    this.status,
    this.message,
    this.data,
  );

  factory BugDetailsResponseBody.fromJson(Map<String, dynamic> json) =>
      _$BugDetailsResponseBodyFromJson(json);
}

@JsonSerializable()
class BugDetailsModel {
  final BugModel bug;
  @JsonKey(name: 'membersList')
  final List<UserModel> members;
  @JsonKey(name: 'bugScreens')
  final List<BugAttachmentModel> attachments;

  BugDetailsModel(this.bug, this.members, this.attachments);

  factory BugDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$BugDetailsModelFromJson(json);
}

@JsonSerializable()
class BugAttachmentModel {
  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'bug')
  final String bugId;
  @JsonKey(name: 'screen')
  final String url;

  BugAttachmentModel(
    this.id,
    this.bugId,
    this.url,
  );

  factory BugAttachmentModel.fromJson(Map<String, dynamic> json) =>
      _$BugAttachmentModelFromJson(json);
}
