import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_project_request_body.g.dart';

@JsonSerializable()
class AddProjectRequestBody {
  final String title;
  final String description;
  final List<String> members;
  final String status;
  AddProjectRequestBody({
    required this.title,
    required this.description,
    required this.members,
    required this.status,
  });

  Map<String, dynamic> toJson() => _$AddProjectRequestBodyToJson(this);
}
