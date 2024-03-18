// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_edit_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserEditRequestModel _$UserEditRequestModelFromJson(
        Map<String, dynamic> json) =>
    UserEditRequestModel(
      json['name'] as String?,
      json['userName'] as String?,
      json['email'] as String?,
    );

Map<String, dynamic> _$UserEditRequestModelToJson(
        UserEditRequestModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'userName': instance.userName,
      'email': instance.email,
    };
