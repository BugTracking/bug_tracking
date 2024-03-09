// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoriesResponseBody _$CategoriesResponseBodyFromJson(
        Map<String, dynamic> json) =>
    CategoriesResponseBody(
      (json['data'] as List<dynamic>)
          .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['status'] as bool,
      json['message'] as String?,
    );

Map<String, dynamic> _$CategoriesResponseBodyToJson(
        CategoriesResponseBody instance) =>
    <String, dynamic>{
      'data': instance.categories,
      'status': instance.status,
      'message': instance.message,
    };

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) =>
    CategoryModel(
      json['_id'] as String,
      json['title'] as String,
    );

Map<String, dynamic> _$CategoryModelToJson(CategoryModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
    };
