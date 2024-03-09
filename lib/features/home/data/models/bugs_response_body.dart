import 'package:bug_tracking/features/home/data/models/user_response_body.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bug_tracking/features/home/data/models/categories_response_body.dart';
part 'bugs_response_body.g.dart';

@JsonSerializable()
class BugResponseBody {
  final bool status;
  final String? message;
  final List<BugModel>? data;
  BugResponseBody(this.status, this.data, this.message);
  factory BugResponseBody.fromJson(Map<String, dynamic> json) =>
      _$BugResponseBodyFromJson(json);
}

@JsonSerializable()
class BugModel {
  @JsonKey(name: '_id')
  final String id;
  final String title;
  final String description;
  @JsonKey(name: 'project')
  final String projectId;
  @JsonKey(name: 'category')
  final CategoryModel category;
  final String status;
  final String priority;
  final String severity;
  final UserModel creator;
  final UserModel lastUpdatedBy;
  final String lastUpdatedAt;
  final String timeCreated;
  BugModel(
      this.id,
      this.title,
      this.description,
      this.projectId,
      this.category,
      this.status,
      this.priority,
      this.severity,
      this.creator,
      this.lastUpdatedBy,
      this.lastUpdatedAt,
      this.timeCreated);
  factory BugModel.fromJson(Map<String, dynamic> json) =>
      _$BugModelFromJson(json);
}
