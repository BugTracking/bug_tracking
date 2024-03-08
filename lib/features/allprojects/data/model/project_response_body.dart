
import 'package:bug_tracking/features/home/data/models/user_response_body.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'project_response_body.g.dart';

@JsonSerializable()
class ProjectResponseBody {
  final bool status;
  final List<ProjectModel>? data;
  ProjectResponseBody(this.status, this.data);
  factory ProjectResponseBody.fromJson(Map<String, dynamic> json) =>
      _$ProjectResponseBodyFromJson(json);
}

@JsonSerializable()
class ProjectModel {
  @JsonKey(name: '_id')
  final String id;
  final String title;
  final String description;
  final String status;
  final UserModel creator;
  final UserModel lastUpdatedBy;
  final String timeCreated;
  final String lastUpdatedAt;

  ProjectModel(
    this.id,
    this.title,
    this.description,
    this.status,
    this.creator,
    this.lastUpdatedBy,
    this.timeCreated,
    this.lastUpdatedAt,
  );

  factory ProjectModel.fromJson(Map<String, dynamic> json) =>  _$ProjectModelFromJson(json);
}