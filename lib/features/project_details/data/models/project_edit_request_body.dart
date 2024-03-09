import 'package:freezed_annotation/freezed_annotation.dart';
part 'project_edit_request_body.g.dart';

@JsonSerializable()
class ProjectEditRequestBody {
  final String title;
  final String description;
  final String status;

  ProjectEditRequestBody({
    required this.title,
    required this.description,
    required this.status,
  });

  Map<String, dynamic> toJson() => _$ProjectEditRequestBodyToJson(this);
}
