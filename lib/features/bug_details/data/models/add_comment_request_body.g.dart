// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_comment_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddCommentRequestBody _$AddCommentRequestBodyFromJson(
        Map<String, dynamic> json) =>
    AddCommentRequestBody(
      json['content'] as String,
      json['bugId'] as String,
    );

Map<String, dynamic> _$AddCommentRequestBodyToJson(
        AddCommentRequestBody instance) =>
    <String, dynamic>{
      'content': instance.content,
      'bugId': instance.bugId,
    };
