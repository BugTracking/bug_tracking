// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_notification_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddNotificationsRequestBody _$AddNotificationsRequestBodyFromJson(
        Map<String, dynamic> json) =>
    AddNotificationsRequestBody(
      json['title'] as String,
      json['content'] as String,
      (json['recievers'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$AddNotificationsRequestBodyToJson(
        AddNotificationsRequestBody instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'recievers': instance.recievers,
    };
