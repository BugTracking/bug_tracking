// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_token_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceTokenRequestBody _$DeviceTokenRequestBodyFromJson(
        Map<String, dynamic> json) =>
    DeviceTokenRequestBody(
      fcmToken: json['deviceToken'] as String,
    );

Map<String, dynamic> _$DeviceTokenRequestBodyToJson(
        DeviceTokenRequestBody instance) =>
    <String, dynamic>{
      'deviceToken': instance.fcmToken,
    };
