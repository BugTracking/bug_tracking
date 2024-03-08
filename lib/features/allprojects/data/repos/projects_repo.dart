import 'package:bug_tracking/core/helpers/cache_helper.dart';
import 'package:bug_tracking/core/networking/api_result.dart';
import 'package:bug_tracking/core/networking/api_service.dart';
import 'package:bug_tracking/features/allprojects/data/model/project_response_body.dart';

import 'package:dio/dio.dart';

class ProjectsRepo {
  final ApiService _apiService;

  ProjectsRepo(this._apiService);

  Future<ApiResult<ProjectResponseBody>> getProjects() async {
    try {
      String token = CacheHelper.token;
      final response = await _apiService.getProjects(token);
      if (response.status) {
        return ApiResult.success(response);
      }
      return ApiResult.failure('Failed to get projects');
    } on DioException catch (e) {
      return ApiResult.failure(e.message ?? '');
    }
  }
}
