import 'package:bug_tracking/core/helpers/cache_helper.dart';
import 'package:bug_tracking/core/networking/api_result.dart';
import 'package:bug_tracking/core/networking/api_service.dart';
import 'package:bug_tracking/features/home/data/models/device_token_request_body.dart';
import 'package:bug_tracking/features/home/data/models/user_response_body.dart';
import 'package:bug_tracking/features/home/data/models/project_response_body.dart';
import 'package:bug_tracking/features/home/data/models/bugs_response_body.dart';
import 'package:dio/dio.dart';

class HomeRepo {
  final ApiService _apiService;

  HomeRepo(this._apiService);

  Future<ApiResult<UserResponseBody>> getUser(String userId) async {
    try {
      final response = await _apiService.getUser(userId);
      if (response.status) {
        return ApiResult.success(response);
      }
      return ApiResult.failure(response.message ?? '');
    } on DioException catch (e) {
      return ApiResult.failure(e.message ?? '');
    }
  }

  Future<ApiResult<ProjectResponseBody>> getAllProjects(String token) async {
    try {
      final response = await _apiService.getProjects(token);
      if (response.status) {
        return ApiResult.success(response);
      }
      return ApiResult.failure(response.message ?? '');
    } on DioException catch (e) {
      return ApiResult.failure(e.message ?? '');
    }
  }

  Future<ApiResult<BugResponseBody>> getAllBugs(String token) async {
    try {
      final response = await _apiService.getBugs(token);
      if (response.status) {
        return ApiResult.success(response);
      }
      return ApiResult.failure(response.message ?? '');
    } on DioException catch (e) {
      return ApiResult.failure(e.message ?? '');
    }
  }

  Future<ApiResult<bool>> setDeviceToken(
      DeviceTokenRequestBody deviceTokenRequestBody) async {
    final String token = CacheHelper.token;
    try {
      final response =
          await _apiService.addDeviceToken(deviceTokenRequestBody, token);
      return ApiResult.success(response.status);
    } on DioException catch (e) {
      return ApiResult.failure(e.message ?? '');
    }
  }
}
