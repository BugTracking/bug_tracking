import 'package:bug_tracking/features/home/data/models/project_response_body.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_project_response_body.g.dart';

@JsonSerializable()
class AddProjectResponseBody {
  final bool status;
  final ProjectModel? data;
  final String? message;
  AddProjectResponseBody({
    required this.status,
    required this.data,
    required this.message,
  });

  factory AddProjectResponseBody.fromJson(Map<String, dynamic> json) =>
      _$AddProjectResponseBodyFromJson(json);
}
