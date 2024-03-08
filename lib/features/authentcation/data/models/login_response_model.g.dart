// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) =>
    LoginResponseModel(
      json['token'] as String?,
      json['status'] as bool,
      json['message'] as String?,
      json['data'] == null
          ? null
          : UserDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseModelToJson(LoginResponseModel instance) =>
    <String, dynamic>{
      'token': instance.token,
      'status': instance.status,
      'message': instance.message,
      'data': instance.userModel,
    };

UserDataModel _$UserDataModelFromJson(Map<String, dynamic> json) =>
    UserDataModel(
      json['_id'] as String,
      json['name'] as String,
      json['email'] as String,
      json['role'] as String,
      json['userName'] as String,
      json['phone'] as String,
    );

Map<String, dynamic> _$UserDataModelToJson(UserDataModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'role': instance.role,
      'userName': instance.userName,
      'phone': instance.phone,
    };
