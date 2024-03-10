import 'package:json_annotation/json_annotation.dart';
part 'add_bug_request_body.g.dart';

@JsonSerializable()
class AddBugRequestBody {
  final String title;
  final String description;
  @JsonKey(name: 'project')
  final String projectId;
  final String category;
  final String status;
  final String priority;
  final String severity;
  final List<String> memebrs;
  @JsonKey(name: 'screens')
  final String attachments;

  AddBugRequestBody(
    this.title,
    this.description,
    this.projectId,
    this.category,
    this.status,
    this.priority,
    this.severity,
    this.memebrs,
    this.attachments,
  );

  Map<String, dynamic> toJson() => _$AddBugRequestBodyToJson(this);
}
