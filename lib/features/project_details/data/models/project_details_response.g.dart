// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectDetailsResponse _$ProjectDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    ProjectDetailsResponse(
      json['status'] as bool,
      json['message'] as String?,
      json['data'] == null
          ? null
          : ProjectDetailsModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProjectDetailsResponseToJson(
        ProjectDetailsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

ProjectDetailsModel _$ProjectDetailsModelFromJson(Map<String, dynamic> json) =>
    ProjectDetailsModel(
      ProjectModel.fromJson(json['project'] as Map<String, dynamic>),
      (json['membersList'] as List<dynamic>)
          .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['bugs'] as List<dynamic>)
          .map((e) => BugModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProjectDetailsModelToJson(
        ProjectDetailsModel instance) =>
    <String, dynamic>{
      'project': instance.project,
      'membersList': instance.members,
      'bugs': instance.bugs,
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

BugModel _$BugModelFromJson(Map<String, dynamic> json) => BugModel(
      json['_id'] as String,
      json['project'] as String,
      json['title'] as String,
      json['description'] as String,
      json['status'] as String,
      json['priority'] as String,
      json['severity'] as String,
      CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
      UserModel.fromJson(json['creator'] as Map<String, dynamic>),
      UserModel.fromJson(json['lastUpdatedBy'] as Map<String, dynamic>),
      json['timeCreated'] as String,
      json['lastUpdatedAt'] as String,
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
