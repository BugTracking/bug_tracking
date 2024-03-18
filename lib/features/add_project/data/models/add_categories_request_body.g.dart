// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_categories_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddCategoriesRequestBody _$AddCategoriesRequestBodyFromJson(
        Map<String, dynamic> json) =>
    AddCategoriesRequestBody(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$AddCategoriesRequestBodyToJson(
        AddCategoriesRequestBody instance) =>
    <String, dynamic>{
      'categories': instance.categories,
    };
