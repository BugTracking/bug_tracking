import 'package:bug_tracking/core/networking/api_result.dart';
import 'package:bug_tracking/core/networking/api_service.dart';
import 'package:bug_tracking/features/project_details/data/models/project_details_response.dart';
import 'package:dio/dio.dart';

class ProjectDetailsRepo {
  final ApiService _apiService;

  ProjectDetailsRepo(this._apiService);

  Future<ApiResult<ProjectDetailsResponse>> getProjectDetails(
    String projectId,
  ) async {
    try {
      final response = await _apiService.getProjectDetails(projectId);
      if (response.status) {
        return ApiResult.success(response);
      }
      return ApiResult.failure(response.message ?? '');
    } on DioException catch (e) {
      return ApiResult.failure(e.message ?? '');
    }
  }
}
