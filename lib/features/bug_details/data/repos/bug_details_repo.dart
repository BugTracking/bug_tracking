import 'package:bug_tracking/core/networking/api_result.dart';
import 'package:bug_tracking/core/networking/api_service.dart';
import 'package:bug_tracking/features/bug_details/data/models/bug_details_response_body.dart';
import 'package:dio/dio.dart';

class BugDetailsRepo {
  final ApiService _apiService;

  BugDetailsRepo(this._apiService);

  Future<ApiResult<BugDetailsResponseBody>> getBugDetails(String bugId) async {
    try {
      final response = await _apiService.getBugDetails(bugId);
      if (response.status) {
        return ApiResult.success(response);
      }

      return ApiResult.failure(
          response.message ?? 'Failed to get the bug details');
    } on DioException catch (e) {
      return ApiResult.failure(e.message ?? 'Failed to get the bug details');
    }
  }
}
