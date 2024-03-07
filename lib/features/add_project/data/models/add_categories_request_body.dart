import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_categories_request_body.g.dart';

@JsonSerializable()
class AddCategoriesRequestBody {
  final List<String> categories;

  const AddCategoriesRequestBody({
    required this.categories,
  });

  Map<String, dynamic> toJson() => _$AddCategoriesRequestBodyToJson(this);
}
