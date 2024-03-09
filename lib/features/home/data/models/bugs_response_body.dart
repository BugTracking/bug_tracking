import 'package:freezed_annotation/freezed_annotation.dart';
part 'bugs_response_body.g.dart';

@JsonSerializable()
class BugResponseBody {
  final bool status;
  final String? message;
  final List<BugModel>? bugdata;
  BugResponseBody(this.status, this.bugdata,this.message);
  factory BugResponseBody.fromJson(Map<String, dynamic> json) =>
      _$BugResponseBodyFromJson(json);
}

@JsonSerializable()
class BugModel {
  @JsonKey(name: 'id')
  //final String id;
  final String title;
  final String description;
  final String projectId;
  final String categoryId;
  final String status;
  final String priority;
  final String severity;
  final String userCreatorId;
  final String timeCreatedAt;
  final String lastUpdatedBy;
  final String lastUpdatedAt;
  final List<String> assignTo;

  BugModel(this.title,
      this.description,
      this.projectId,
      this.categoryId,
      this.status,
      this.priority,
      this.severity,
      this.userCreatorId,
      this.timeCreatedAt,
      this.lastUpdatedBy,
      this.lastUpdatedAt,
      this.assignTo);

  factory BugModel.fromJson(Map<String, dynamic> json) =>
      _$BugModelFromJson(json);


  }