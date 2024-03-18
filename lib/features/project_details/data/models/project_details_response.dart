import 'package:bug_tracking/features/home/data/models/project_response_body.dart';
import 'package:bug_tracking/features/home/data/models/user_response_body.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../home/data/models/bugs_response_body.dart';
part 'project_details_response.g.dart';

@JsonSerializable()
class ProjectDetailsResponse {
  final bool status;
  final String? message;
  final ProjectDetailsModel? data;

  ProjectDetailsResponse(this.status, this.message, this.data);

  factory ProjectDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$ProjectDetailsResponseFromJson(json);
}

@JsonSerializable()
class ProjectDetailsModel {
  final ProjectModel project;
  @JsonKey(name: 'membersList')
  final List<UserModel> members;
  final List<BugModel> bugs;

  ProjectDetailsModel(this.project, this.members, this.bugs);

  factory ProjectDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectDetailsModelFromJson(json);
}
