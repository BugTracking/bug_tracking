// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserResponseBody _$UserResponseBodyFromJson(Map<String, dynamic> json) =>
    UserResponseBody(
      json['status'] as bool,
      json['data'] == null
          ? null
          : UserData.fromJson(json['data'] as Map<String, dynamic>),
      json['message'] as String?,
    );

Map<String, dynamic> _$UserResponseBodyToJson(UserResponseBody instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'message': instance.message,
    };

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      UserModel.fromJson(json['user'] as Map<String, dynamic>),
      (json['membersList'] as List<dynamic>)
          .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'user': instance.user,
      'membersList': instance.members,
    };

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      json['_id'] as String,
      json['name'] as String,
      json['userName'] as String,
      json['email'] as String,
      json['role'] as String,
      json['phone'] as String,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'userName': instance.userName,
      'email': instance.email,
      'role': instance.role,
      'phone': instance.phone,
    };
