import 'package:bug_tracking/core/networking/api_error_handler.dart';
import 'package:bug_tracking/core/networking/api_result.dart';
import 'package:bug_tracking/core/networking/api_service.dart';
import 'package:bug_tracking/features/allprojects/data/model/project_response_body.dart';


import 'package:dio/dio.dart';

class ProjectsRepo {
  final ApiService _apiService;

  ProjectsRepo(this._apiService);

  Future<ApiResult<ProjectResponseBody>> getProjects() async {
    try {
      String token =
          "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2NWU5MDlmZmQwNzIyYzZmMTFjMThmZDgiLCJpYXQiOjE3MDk5MzA4MTd9.J3PnKE2pdgQtYnYPjWs9ny1Km7On-NAfeXkoqfPJbP0";
      final repons = await _apiService.getProjects(token);
      if (repons.status) {
        return ApiResult.success(repons);
      }
      return ApiResult.failure(ErrorHandler.handle('Error to get data'));
    } on DioException catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e.message));
    }
  }
}
