import 'package:bug_tracking/core/networking/api_error_handler.dart';
import 'package:bug_tracking/core/networking/api_result.dart';
import 'package:bug_tracking/core/networking/api_service.dart';
import 'package:bug_tracking/features/allprojects/data/model/project_response_body.dart';


import 'package:dio/dio.dart';

class ProjectsRepo {
  final ApiService _apiService;

  ProjectsRepo(this._apiService );

    
  Future<ApiResult<ProjectREsponseBody>> getProjects() async {
    try {
      String token = "";
      final repons = await _apiService.getProjects(token);
      return ApiResult.success(repons);
    } on DioException catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e.message));
    }
  }
}

