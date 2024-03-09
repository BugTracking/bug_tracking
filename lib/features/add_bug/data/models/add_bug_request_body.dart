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
  final List<String> members;
  @JsonKey(name: 'screens')
  final List<String> attachments;

  AddBugRequestBody({
    required this.title,
    required this.description,
    required this.projectId,
    required this.category,
    required this.status,
    required this.priority,
    required this.severity,
    required this.members,
    required this.attachments,
  });

  Map<String, dynamic> toJson() => _$AddBugRequestBodyToJson(this);
}
