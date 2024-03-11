// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_acc_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteAccResponseModel _$DeleteAccResponseModelFromJson(
        Map<String, dynamic> json) =>
    DeleteAccResponseModel(
      json['status'] as bool,
      json['message'] as String?,
    );

Map<String, dynamic> _$DeleteAccResponseModelToJson(
        DeleteAccResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
