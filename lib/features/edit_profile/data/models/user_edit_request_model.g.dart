// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_edit_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserEditRequestModel _$UserEditRequestModelFromJson(
        Map<String, dynamic> json) =>
    UserEditRequestModel(
      name: json['name'] as String?,
      userName: json['userName'] as String?,
      email: json['email'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$UserEditRequestModelToJson(
        UserEditRequestModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'userName': instance.userName,
      'email': instance.email,
      'avatar': instance.avatar,
    };
