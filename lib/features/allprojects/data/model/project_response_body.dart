import 'package:bug_tracking/features/home/data/models/user_response_body.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'project_response_body.g.dart';

@JsonSerializable()
class ProjectREsponseBody {
  final bool status;
  final List<ProjectModel>? data;
  ProjectREsponseBody(this.status, this.data);
  factory ProjectREsponseBody.fromJson(Map<String, dynamic> json) => _$ProjectREsponseBodyFromJson(json);
}

@JsonSerializable()
class ProjectModel {
  final String id;
  final String title;
  final String description;
  final String status;
  final UserModel creator;
  final UserModel lastUpdatedBy;
  final DateTime timeCreated;
  final DateTime lastUpdatedAt;

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
  factory ProjectModel.fromJson(Map<String, dynamic> json) => _$ProjectModelFromJson(json);

}
