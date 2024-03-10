// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_bug_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddBugRequestBody _$AddBugRequestBodyFromJson(Map<String, dynamic> json) =>
    AddBugRequestBody(
      json['title'] as String,
      json['description'] as String,
      json['project'] as String,
      json['category'] as String,
      json['status'] as String,
      json['priority'] as String,
      json['severity'] as String,
      (json['memebrs'] as List<dynamic>).map((e) => e as String).toList(),
      json['screens'] as String,
    );

Map<String, dynamic> _$AddBugRequestBodyToJson(AddBugRequestBody instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'project': instance.projectId,
      'category': instance.category,
      'status': instance.status,
      'priority': instance.priority,
      'severity': instance.severity,
      'memebrs': instance.memebrs,
      'screens': instance.attachments,
    };
