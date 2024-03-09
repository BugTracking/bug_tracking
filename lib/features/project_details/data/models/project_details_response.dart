import 'package:bug_tracking/features/add_project/data/models/categories_response_body.dart';
import 'package:bug_tracking/features/home/data/models/project_response_body.dart';
import 'package:bug_tracking/features/home/data/models/user_response_body.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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

@JsonSerializable()
class BugModel {
  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'project')
  final String projectId;
  final String title;
  final String description;
  final String status;
  final String priority;
  final String severity;
  final CategoryModel category;
  final UserModel creator;
  final UserModel lastUpdatedBy;
  final String timeCreated;
  final String lastUpdatedAt;

  BugModel(
    this.id,
    this.projectId,
    this.title,
    this.description,
    this.status,
    this.priority,
    this.severity,
    this.category,
    this.creator,
    this.lastUpdatedBy,
    this.timeCreated,
    this.lastUpdatedAt,
  );

  factory BugModel.fromJson(Map<String, dynamic> json) =>
      _$BugModelFromJson(json);
}
