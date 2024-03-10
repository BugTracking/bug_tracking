// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_bug_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddBugResponseBody _$AddBugResponseBodyFromJson(Map<String, dynamic> json) =>
    AddBugResponseBody(
      json['status'] as bool,
      json['data'] == null
          ? null
          : BugModel.fromJson(json['data'] as Map<String, dynamic>),
      json['message'] as String?,
    );

Map<String, dynamic> _$AddBugResponseBodyToJson(AddBugResponseBody instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'message': instance.message,
    };
