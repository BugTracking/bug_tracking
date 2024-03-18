// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_notification_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddNotificationsResponseBody _$AddNotificationsResponseBodyFromJson(
        Map<String, dynamic> json) =>
    AddNotificationsResponseBody(
      json['message'] as String?,
      json['status'] as bool,
    );

Map<String, dynamic> _$AddNotificationsResponseBodyToJson(
        AddNotificationsResponseBody instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
    };
