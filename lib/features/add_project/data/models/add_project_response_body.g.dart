// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_project_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddProjectResponseBody _$AddProjectResponseBodyFromJson(
        Map<String, dynamic> json) =>
    AddProjectResponseBody(
      status: json['status'] as bool,
      data: AddprojectModel.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$AddProjectResponseBodyToJson(
        AddProjectResponseBody instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'message': instance.message,
    };

AddprojectModel _$AddprojectModelFromJson(Map<String, dynamic> json) =>
    AddprojectModel(
      json['_id'] as String,
      json['title'] as String,
      json['description'] as String,
      json['status'] as String,
      UserModel.fromJson(json['creator'] as Map<String, dynamic>),
      UserModel.fromJson(json['lastUpdatedBy'] as Map<String, dynamic>),
      json['timeCreated'] as String,
      json['lastUpdatedAt'] as String,
    );

Map<String, dynamic> _$AddprojectModelToJson(AddprojectModel instance) =>
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
