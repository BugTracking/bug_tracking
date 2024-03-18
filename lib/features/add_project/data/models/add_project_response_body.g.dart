// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_project_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddProjectResponseBody _$AddProjectResponseBodyFromJson(
        Map<String, dynamic> json) =>
    AddProjectResponseBody(
      status: json['status'] as bool,
      data: json['data'] == null
          ? null
          : ProjectModel.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$AddProjectResponseBodyToJson(
        AddProjectResponseBody instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'message': instance.message,
    };
