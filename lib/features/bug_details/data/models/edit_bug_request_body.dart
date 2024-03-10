import 'package:freezed_annotation/freezed_annotation.dart';
part 'edit_bug_request_body.g.dart';

@JsonSerializable()
class EditBugRequestBody {
  final String title;
  final String description;
  @JsonKey(name: 'category')
  final String categoryId;
  final String priority;
  final String status;
  final String severity;
  EditBugRequestBody({
    required this.title,
    required this.description,
    required this.categoryId,
    required this.priority,
    required this.status,
    required this.severity,
  });

  Map<String, dynamic> toJson() => _$EditBugRequestBodyToJson(this);
}
