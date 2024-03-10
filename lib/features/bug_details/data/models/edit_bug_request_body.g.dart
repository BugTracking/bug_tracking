// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_bug_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditBugRequestBody _$EditBugRequestBodyFromJson(Map<String, dynamic> json) =>
    EditBugRequestBody(
      title: json['title'] as String,
      description: json['description'] as String,
      categoryId: json['category'] as String,
      priority: json['priority'] as String,
      status: json['status'] as String,
      severity: json['severity'] as String,
    );

Map<String, dynamic> _$EditBugRequestBodyToJson(EditBugRequestBody instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'category': instance.categoryId,
      'priority': instance.priority,
      'status': instance.status,
      'severity': instance.severity,
    };
