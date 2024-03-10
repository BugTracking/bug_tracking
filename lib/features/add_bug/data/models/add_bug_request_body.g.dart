// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_bug_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddBugRequestBody _$AddBugRequestBodyFromJson(Map<String, dynamic> json) =>
    AddBugRequestBody(
      title: json['title'] as String,
      description: json['description'] as String,
      projectId: json['project'] as String,
      category: json['category'] as String,
      status: json['status'] as String,
      priority: json['priority'] as String,
      severity: json['severity'] as String,
      members:
          (json['members'] as List<dynamic>).map((e) => e as String).toList(),
      attachments:
          (json['screens'] as List<dynamic>).map((e) => e as String).toList(),
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
      'members': instance.members,
      'screens': instance.attachments,
    };
