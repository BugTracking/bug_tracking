import 'package:bug_tracking/core/helpers/cache_helper.dart';
import 'package:bug_tracking/core/networking/api_result.dart';
import 'package:bug_tracking/core/networking/api_service.dart';
import 'package:bug_tracking/features/add_project/data/models/categories_response_body.dart';
import 'package:bug_tracking/features/bug_details/data/models/add_comment_request_body.dart';
import 'package:bug_tracking/features/bug_details/data/models/add_comment_response_body.dart';
import 'package:bug_tracking/features/bug_details/data/models/bug_details_response_body.dart';
import 'package:bug_tracking/features/bug_details/data/models/comments_response_body.dart';
import 'package:bug_tracking/features/bug_details/data/models/edit_bug_request_body.dart';
import 'package:bug_tracking/features/bug_details/data/models/edit_bug_response_body.dart';
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

  Future<ApiResult<CommentsResponseBody>> getComments(String bugId) async {
    try {
      final response = await _apiService.getComments(bugId);
      if (response.status) {
        return ApiResult.success(response);
      }

      return ApiResult.failure(response.message ?? 'Failed to get comments');
    } on DioException catch (e) {
      return ApiResult.failure(e.message ?? 'Failed to get comments');
    }
  }

  Future<ApiResult<AddCommentResponseBody>> addComment(
    AddCommentRequestBody addCommentRequestBody,
  ) async {
    final String token = CacheHelper.token;
    try {
      final response = await _apiService.addComment(
        token,
        addCommentRequestBody,
      );
      if (response.status) {
        return ApiResult.success(response);
      }
      return ApiResult.failure(response.message ?? 'Failed to add comment');
    } on DioException catch (e) {
      return ApiResult.failure(e.message ?? 'Failed to add comment');
    }
  }

  Future<ApiResult<CategoriesResponseBody>> getCategories() async {
    try {
      final response = await _apiService.getCategories();
      if (response.status) {
        return ApiResult.success(response);
      }
      return ApiResult.failure(response.message ?? 'Failed to get categories');
    } on DioException catch (e) {
      return ApiResult.failure(e.message ?? 'Failed to get categories');
    }
  }

  Future<ApiResult<EditBugResponseBody>> editBug(
    EditBugRequestBody editBugRequestBody,
    String bugId,
  ) async {
    final String token = CacheHelper.token;
    try {
      final response = await _apiService.editBug(
        bugId,
        token,
        editBugRequestBody,
      );
      if (response.status) {
        return ApiResult.success(response);
      }
      return ApiResult.failure(response.message ?? 'Failed to edit bug');
    } on DioException catch (e) {
      return ApiResult.failure(e.message ?? 'Failed to edit bug');
    }
  }
}
