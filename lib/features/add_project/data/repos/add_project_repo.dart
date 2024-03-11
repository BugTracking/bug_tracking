import 'package:bug_tracking/core/helpers/cache_helper.dart';
import 'package:bug_tracking/core/networking/api_result.dart';
import 'package:bug_tracking/core/networking/api_service.dart';
import 'package:bug_tracking/features/add_project/data/models/add_categories_request_body.dart';
import 'package:bug_tracking/features/add_project/data/models/add_categories_response_body.dart';
import 'package:bug_tracking/features/add_project/data/models/add_project_request_body.dart';
import 'package:bug_tracking/features/add_project/data/models/add_project_response_body.dart';
import 'package:bug_tracking/features/add_project/data/models/categories_response_body.dart';
import 'package:bug_tracking/features/home/data/models/device_token_response_body.dart';
import 'package:bug_tracking/features/notfications/data/models/add_notification_request_body.dart';
import 'package:bug_tracking/features/notfications/data/models/add_notification_response_body.dart';
import 'package:dio/dio.dart';

class AddProjectRepo {
  final ApiService _apiService;

  AddProjectRepo(this._apiService);

  Future<ApiResult<CategoriesResponseBody>> getCategories() async {
    try {
      final response = await _apiService.getCategories();
      if (response.status) {
        return ApiResult.success(response);
      }
      return ApiResult.failure(response.message ?? '');
    } on DioException catch (e) {
      return ApiResult.failure(e.message ?? '');
    }
  }

  Future<ApiResult<AddCategoriesResponseBody>> addCategories(
      AddCategoriesRequestBody addCategoriesRequestBody) async {
    try {
      final response =
          await _apiService.addCategories(addCategoriesRequestBody);
      if (response.status) {
        return ApiResult.success(response);
      }
      return ApiResult.failure(response.message ?? '');
    } on DioException catch (e) {
      return ApiResult.failure(e.message ?? '');
    }
  }

  Future<ApiResult<AddProjectResponseBody>> addProject(
      AddProjectRequestBody addProjectRequestBody) async {
    try {
      final String token = CacheHelper.token;
      final response =
          await _apiService.addProject(addProjectRequestBody, token);
      if (response.status) {
        return ApiResult.success(response);
      }
      return ApiResult.failure(response.message ?? '');
    } on DioException catch (e) {
      return ApiResult.failure(e.message ?? '');
    }
  }

  Future<ApiResult<AddNotificationsResponseBody>> addNotifications(
      AddNotificationsRequestBody addNotificationsRequestBody) async {
    final String token = CacheHelper.token;
    try {
      final response = await _apiService.addNotification(
        addNotificationsRequestBody,
        token,
      );
      if (response.status) {
        return ApiResult.success(response);
      }
      return ApiResult.failure(response.message ?? '');
    } on DioException catch (e) {
      return ApiResult.failure(e.message ?? '');
    }
  }

  Future<ApiResult<List<DeviceTokenResponseBody>>> getTokens(
      List<String> userIds) async {
    try {
      List<DeviceTokenResponseBody> tokens = [];
      for (String userId in userIds) {
        final response = await _apiService.getDeviceToken(userId);
        if (response.data != null) {
          tokens.add(response);
        }
      }
      return ApiResult.success(tokens);
    } on DioException catch (e) {
      return ApiResult.failure(e.message ?? 'Failed to get token');
    }
  }
}
