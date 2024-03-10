// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_token_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceTokenResponseBody _$DeviceTokenResponseBodyFromJson(
        Map<String, dynamic> json) =>
    DeviceTokenResponseBody(
      json['data'] == null
          ? null
          : DeviceTokenModel.fromJson(json['data'] as Map<String, dynamic>),
      json['status'] as bool,
    );

Map<String, dynamic> _$DeviceTokenResponseBodyToJson(
        DeviceTokenResponseBody instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
    };

DeviceTokenModel _$DeviceTokenModelFromJson(Map<String, dynamic> json) =>
    DeviceTokenModel(
      fcmToken: json['deviceToken'] as String,
    );

Map<String, dynamic> _$DeviceTokenModelToJson(DeviceTokenModel instance) =>
    <String, dynamic>{
      'deviceToken': instance.fcmToken,
    };
