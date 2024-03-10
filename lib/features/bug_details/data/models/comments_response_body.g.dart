// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comments_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommentsResponseBody _$CommentsResponseBodyFromJson(
        Map<String, dynamic> json) =>
    CommentsResponseBody(
      json['status'] as bool,
      json['message'] as String?,
      (json['data'] as List<dynamic>?)
          ?.map((e) => CommentData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CommentsResponseBodyToJson(
        CommentsResponseBody instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

CommentData _$CommentDataFromJson(Map<String, dynamic> json) => CommentData(
      json['_id'] as String,
      UserModel.fromJson(json['userId'] as Map<String, dynamic>),
      json['time'] as String,
      json['bugId'] as String,
      CommentModel.fromJson(json['commentId'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CommentDataToJson(CommentData instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'userId': instance.user,
      'time': instance.time,
      'bugId': instance.bugId,
      'commentId': instance.comment,
    };

CommentModel _$CommentModelFromJson(Map<String, dynamic> json) => CommentModel(
      json['_id'] as String,
      json['content'] as String,
    );

Map<String, dynamic> _$CommentModelToJson(CommentModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'content': instance.content,
    };
