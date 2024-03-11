// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sent_notification_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SentNotificationRequestBody _$SentNotificationRequestBodyFromJson(
        Map<String, dynamic> json) =>
    SentNotificationRequestBody(
      json['to'] as String,
      NotificationModel.fromJson(json['notification'] as Map<String, dynamic>),
      NotiticationData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SentNotificationRequestBodyToJson(
        SentNotificationRequestBody instance) =>
    <String, dynamic>{
      'to': instance.to,
      'notification': instance.notification,
      'data': instance.data,
    };

NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) =>
    NotificationModel(
      json['title'] as String,
      json['body'] as String,
    );

Map<String, dynamic> _$NotificationModelToJson(NotificationModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
    };

NotiticationData _$NotiticationDataFromJson(Map<String, dynamic> json) =>
    NotiticationData(
      senderId: json['senderId'] as String,
      projectId: json['projectId'] as String?,
      projectTitle: json['projectTitle'] as String?,
      projectStatus: json['projectStatus'] as String?,
      bugTitle: json['bugTitle'] as String?,
      bugId: json['bugId'] as String?,
    );

Map<String, dynamic> _$NotiticationDataToJson(NotiticationData instance) =>
    <String, dynamic>{
      'senderId': instance.senderId,
      'projectId': instance.projectId,
      'projectTitle': instance.projectTitle,
      'projectStatus': instance.projectStatus,
      'bugTitle': instance.bugTitle,
      'bugId': instance.bugId,
    };
