import 'package:bug_tracking/core/networking/api_result.dart';
import 'package:bug_tracking/core/networking/api_service.dart';
import 'package:bug_tracking/features/project_details/data/models/project_details_response.dart';
import 'package:bug_tracking/features/project_details/data/models/project_edit_request_body.dart';
import 'package:bug_tracking/features/project_details/data/models/project_edit_response_body.dart';
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

  Future<ApiResult<ProjectEditResponseBody>> editProject(
    String projectId,
    ProjectEditRequestBody projectEditRequestBody,
  ) async {
    const String token =
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2NWU5MDliNWQwNzIyYzZmMTFjMThmZDAiLCJpYXQiOjE3MDk5MDQ1NDZ9.uJqp611Ro6B-n9bHs7eCtDbc-bA9e8l17AVgPTbnIYs';
    try {
      final response = await _apiService.editProject(
        projectId,
        projectEditRequestBody,
        token,
      );
      if (response.status) {
        return ApiResult.success(response);
      }
      return ApiResult.failure(response.message);
    } on DioException catch (e) {
      return ApiResult.failure(e.message ?? '');
    }
  }
}
