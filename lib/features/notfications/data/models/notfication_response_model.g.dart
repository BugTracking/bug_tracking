// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notfication_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationResponseModel _$NotificationResponseModelFromJson(
        Map<String, dynamic> json) =>
    NotificationResponseModel(
      json['status'] as bool,
      json['messege'] as String?,
      (json['data'] as List<dynamic>)
          .map((e) => NotificationData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NotificationResponseModelToJson(
        NotificationResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'messege': instance.messege,
      'data': instance.data,
    };

NotificationData _$NotificationDataFromJson(Map<String, dynamic> json) =>
    NotificationData(
      json['_id'] as String,
      NotificationSender.fromJson(json['senderUserId'] as Map<String, dynamic>),
      json['receiverUserId'] as String,
      NotificationBody.fromJson(json['notificationId'] as Map<String, dynamic>),
      json['time'] as String,
    );

Map<String, dynamic> _$NotificationDataToJson(NotificationData instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'senderUserId': instance.senderUserId,
      'receiverUserId': instance.receiverUserId,
      'notificationId': instance.notificationId,
      'time': instance.time,
    };

NotificationSender _$NotificationSenderFromJson(Map<String, dynamic> json) =>
    NotificationSender(
      json['_id'] as String,
      json['email'] as String,
      json['userName'] as String,
      json['name'] as String,
      json['password'] as String,
      json['role'] as String,
      json['phone'] as String,
    );

Map<String, dynamic> _$NotificationSenderToJson(NotificationSender instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'email': instance.email,
      'userName': instance.userName,
      'name': instance.name,
      'password': instance.password,
      'role': instance.role,
      'phone': instance.phone,
    };

NotificationBody _$NotificationBodyFromJson(Map<String, dynamic> json) =>
    NotificationBody(
      json['_id'] as String,
      json['title'] as String,
      json['content'] as String,
    );

Map<String, dynamic> _$NotificationBodyToJson(NotificationBody instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'content': instance.content,
    };
