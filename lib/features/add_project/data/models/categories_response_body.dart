import 'package:freezed_annotation/freezed_annotation.dart';
part 'categories_response_body.g.dart';

@JsonSerializable()
class CategoriesResponseBody {
  @JsonKey(name: 'data')
  final List<CategoryModel> categories;
  final bool status;

  CategoriesResponseBody(this.categories, this.status);

  factory CategoriesResponseBody.fromJson(Map<String, dynamic> json) =>
      _$CategoriesResponseBodyFromJson(json);
}

@JsonSerializable()
class CategoryModel {
  @JsonKey(name: '_id')
  final String id;
  final String title;

  CategoryModel(this.id, this.title);

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}
