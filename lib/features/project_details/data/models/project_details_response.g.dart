// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectDetailsResponse _$ProjectDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    ProjectDetailsResponse(
      json['status'] as bool,
      json['message'] as String?,
      json['data'] == null
          ? null
          : ProjectDetailsModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProjectDetailsResponseToJson(
        ProjectDetailsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

ProjectDetailsModel _$ProjectDetailsModelFromJson(Map<String, dynamic> json) =>
    ProjectDetailsModel(
      ProjectModel.fromJson(json['project'] as Map<String, dynamic>),
      (json['membersList'] as List<dynamic>)
          .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['bugs'] as List<dynamic>)
          .map((e) => BugModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProjectDetailsModelToJson(
        ProjectDetailsModel instance) =>
    <String, dynamic>{
      'project': instance.project,
      'membersList': instance.members,
      'bugs': instance.bugs,
    };
