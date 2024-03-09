// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_project_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddProjectRequestBody _$AddProjectRequestBodyFromJson(
        Map<String, dynamic> json) =>
    AddProjectRequestBody(
      title: json['title'] as String,
      description: json['description'] as String,
      members:
          (json['members'] as List<dynamic>).map((e) => e as String).toList(),
      status: json['status'] as String,
    );

Map<String, dynamic> _$AddProjectRequestBodyToJson(
        AddProjectRequestBody instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'members': instance.members,
      'status': instance.status,
    };
