// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bugs_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BugResponseBody _$BugResponseBodyFromJson(Map<String, dynamic> json) =>
    BugResponseBody(
      json['status'] as bool,
      (json['data'] as List<dynamic>?)
          ?.map((e) => BugModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['message'] as String?,
    );

Map<String, dynamic> _$BugResponseBodyToJson(BugResponseBody instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

BugModel _$BugModelFromJson(Map<String, dynamic> json) => BugModel(
      json['_id'] as String,
      json['title'] as String,
      json['description'] as String,
      json['project'] as String,
      CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
      json['status'] as String,
      json['priority'] as String,
      json['severity'] as String,
      UserModel.fromJson(json['creator'] as Map<String, dynamic>),
      UserModel.fromJson(json['lastUpdatedBy'] as Map<String, dynamic>),
      json['lastUpdatedAt'] as String,
      json['timeCreated'] as String,
    );

Map<String, dynamic> _$BugModelToJson(BugModel instance) => <String, dynamic>{
      '_id': instance.id,
      'project': instance.projectId,
      'title': instance.title,
      'description': instance.description,
      'status': instance.status,
      'priority': instance.priority,
      'severity': instance.severity,
      'category': instance.category,
      'creator': instance.creator,
      'lastUpdatedBy': instance.lastUpdatedBy,
      'timeCreated': instance.timeCreated,
      'lastUpdatedAt': instance.lastUpdatedAt,
    };
