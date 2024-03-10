// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_comment_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddCommentResponseBody _$AddCommentResponseBodyFromJson(
        Map<String, dynamic> json) =>
    AddCommentResponseBody(
      json['status'] as bool,
      json['message'] as String?,
      json['data'] == null
          ? null
          : CommentData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddCommentResponseBodyToJson(
        AddCommentResponseBody instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
