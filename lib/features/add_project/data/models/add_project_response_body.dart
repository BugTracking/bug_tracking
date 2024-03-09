import 'package:bug_tracking/features/home/data/models/user_response_body.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_project_response_body.g.dart';

@JsonSerializable()
class AddProjectResponseBody {
  final bool status;
  final AddprojectModel data;
  final String? message;
  AddProjectResponseBody({
    required this.status,
    required this.data,
    required this.message,
  });

  factory AddProjectResponseBody.fromJson(Map<String, dynamic> json) =>
      _$AddProjectResponseBodyFromJson(json);
}

@JsonSerializable()
class AddprojectModel {
  @JsonKey(name: '_id')
  final String id;
  final String title;
  final String description;
  final String status;
  final UserModel creator;
  final UserModel lastUpdatedBy;
  final String timeCreated;
  final String lastUpdatedAt;

  AddprojectModel(
    this.id,
    this.title,
    this.description,
    this.status,
    this.creator,
    this.lastUpdatedBy,
    this.timeCreated,
    this.lastUpdatedAt,
  );

  factory AddprojectModel.fromJson(Map<String, dynamic> json) =>
      _$AddprojectModelFromJson(json);
}
