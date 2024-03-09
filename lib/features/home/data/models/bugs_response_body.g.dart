// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bugs_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BugResponseBody _$BugResponseBodyFromJson(Map<String, dynamic> json) =>
    BugResponseBody(
      json['status'] as bool,
      (json['bugdata'] as List<dynamic>?)
          ?.map((e) => BugModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['message'] as String?,
    );

Map<String, dynamic> _$BugResponseBodyToJson(BugResponseBody instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'bugdata': instance.bugdata,
    };

BugModel _$BugModelFromJson(Map<String, dynamic> json) => BugModel(
      json['id'] as String,
      json['description'] as String,
      json['projectId'] as String,
      json['categoryId'] as String,
      json['status'] as String,
      json['priority'] as String,
      json['severity'] as String,
      json['userCreatorId'] as String,
      json['timeCreatedAt'] as String,
      json['lastUpdatedBy'] as String,
      json['lastUpdatedAt'] as String,
      (json['assignTo'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$BugModelToJson(BugModel instance) => <String, dynamic>{
      'id': instance.title,
      'description': instance.description,
      'projectId': instance.projectId,
      'categoryId': instance.categoryId,
      'status': instance.status,
      'priority': instance.priority,
      'severity': instance.severity,
      'userCreatorId': instance.userCreatorId,
      'timeCreatedAt': instance.timeCreatedAt,
      'lastUpdatedBy': instance.lastUpdatedBy,
      'lastUpdatedAt': instance.lastUpdatedAt,
      'assignTo': instance.assignTo,
    };
