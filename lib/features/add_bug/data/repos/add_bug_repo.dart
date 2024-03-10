import 'package:bug_tracking/core/networking/api_result.dart';
import 'package:bug_tracking/core/networking/api_service.dart';
import 'package:bug_tracking/features/add_project/data/models/categories_response_body.dart';
import 'package:dio/dio.dart';

class AddBugRepo {
  final ApiService _apiService;

  AddBugRepo(this._apiService);

  Future<ApiResult<CategoriesResponseBody>> getCategories() async {
    try {
      final response = await _apiService.getCategories();
      if (response.status) {
        return ApiResult.success(response);
      }
      return ApiResult.failure('Failed to get categories');
    } on DioException catch (e) {
      return ApiResult.failure(e.message ?? '');
    }
  }
}
