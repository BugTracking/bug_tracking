// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterRequestModel _$RegisterRequestModelFromJson(
        Map<String, dynamic> json) =>
    RegisterRequestModel(
      json['email'] as String,
      json['userName'] as String,
      json['name'] as String,
      json['password'] as String,
      json['phone'] as String,
      json['role'] as String,
    );

Map<String, dynamic> _$RegisterRequestModelToJson(
        RegisterRequestModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'userName': instance.userName,
      'name': instance.name,
      'password': instance.password,
      'phone': instance.phone,
      'role': instance.role,
    };
