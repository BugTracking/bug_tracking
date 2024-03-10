// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddMemberResponseBody _$AddMemberResponseBodyFromJson(
        Map<String, dynamic> json) =>
    AddMemberResponseBody(
      data: MembersModel.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
      status: json['status'] as bool,
    );

Map<String, dynamic> _$AddMemberResponseBodyToJson(
        AddMemberResponseBody instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'message': instance.message,
    };

MembersModel _$MembersModelFromJson(Map<String, dynamic> json) => MembersModel(
      json['_id'] as String,
      json['name'] as String,
      json['userName'] as String,
      json['email'] as String,
      json['role'] as String,
      json['phone'] as String,
    );

Map<String, dynamic> _$MembersModelToJson(MembersModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'userName': instance.userName,
      'email': instance.email,
      'role': instance.role,
      'phone': instance.phone,
    };
