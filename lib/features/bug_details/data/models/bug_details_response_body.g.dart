// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bug_details_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BugDetailsResponseBody _$BugDetailsResponseBodyFromJson(
        Map<String, dynamic> json) =>
    BugDetailsResponseBody(
      json['status'] as bool,
      json['message'] as String?,
      json['data'] == null
          ? null
          : BugDetailsModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BugDetailsResponseBodyToJson(
        BugDetailsResponseBody instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

BugDetailsModel _$BugDetailsModelFromJson(Map<String, dynamic> json) =>
    BugDetailsModel(
      BugModel.fromJson(json['bug'] as Map<String, dynamic>),
      (json['membersList'] as List<dynamic>)
          .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['bugScreens'] as List<dynamic>)
          .map((e) => BugAttachmentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BugDetailsModelToJson(BugDetailsModel instance) =>
    <String, dynamic>{
      'bug': instance.bug,
      'membersList': instance.members,
      'bugScreens': instance.attachments,
    };

BugAttachmentModel _$BugAttachmentModelFromJson(Map<String, dynamic> json) =>
    BugAttachmentModel(
      json['_id'] as String,
      json['bug'] as String,
      json['screen'] as String,
    );

Map<String, dynamic> _$BugAttachmentModelToJson(BugAttachmentModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'bug': instance.bugId,
      'screen': instance.url,
    };
