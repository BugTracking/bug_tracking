// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectResponseBody _$ProjectResponseBodyFromJson(Map<String, dynamic> json) =>
    ProjectResponseBody(
      json['status'] as bool,
      (json['data'] as List<dynamic>?)
          ?.map((e) => ProjectModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProjectResponseBodyToJson(
        ProjectResponseBody instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

ProjectModel _$ProjectModelFromJson(Map<String, dynamic> json) => ProjectModel(
      json['_id'] as String,
      json['title'] as String,
      json['description'] as String,
      json['status'] as String,
      UserModel.fromJson(json['creator'] as Map<String, dynamic>),
      UserModel.fromJson(json['lastUpdatedBy'] as Map<String, dynamic>),
      json['timeCreated'] as String,
      json['lastUpdatedAt'] as String,
    );

Map<String, dynamic> _$ProjectModelToJson(ProjectModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'status': instance.status,
      'creator': instance.creator,
      'lastUpdatedBy': instance.lastUpdatedBy,
      'timeCreated': instance.timeCreated,
      'lastUpdatedAt': instance.lastUpdatedAt,
    };
