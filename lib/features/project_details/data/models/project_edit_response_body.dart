import 'package:freezed_annotation/freezed_annotation.dart';
part 'project_edit_response_body.g.dart';

@JsonSerializable()
class ProjectEditResponseBody {
  final String message;
  final bool status;

  ProjectEditResponseBody(this.message, this.status);

  factory ProjectEditResponseBody.fromJson(Map<String, dynamic> json) =>
      _$ProjectEditResponseBodyFromJson(json);
}
