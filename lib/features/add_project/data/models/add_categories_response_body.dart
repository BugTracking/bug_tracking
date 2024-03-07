import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_categories_response_body.g.dart';

@JsonSerializable()
class AddCategoriesResponseBody {
  final String? message;
  final bool status;

  AddCategoriesResponseBody(this.message, this.status);

  factory AddCategoriesResponseBody.fromJson(Map<String, dynamic> json) =>
      _$AddCategoriesResponseBodyFromJson(json);
}
