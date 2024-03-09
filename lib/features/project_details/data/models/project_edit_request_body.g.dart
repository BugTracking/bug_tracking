// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_edit_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectEditRequestBody _$ProjectEditRequestBodyFromJson(
        Map<String, dynamic> json) =>
    ProjectEditRequestBody(
      title: json['title'] as String,
      description: json['description'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$ProjectEditRequestBodyToJson(
        ProjectEditRequestBody instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'status': instance.status,
    };
