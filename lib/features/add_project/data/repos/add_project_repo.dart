import 'package:bug_tracking/core/networking/api_error_handler.dart';
import 'package:bug_tracking/core/networking/api_result.dart';
import 'package:bug_tracking/core/networking/api_service.dart';
import 'package:bug_tracking/features/add_project/data/models/add_project_request_body.dart';
import 'package:bug_tracking/features/add_project/data/models/add_project_response_body.dart';
import 'package:dio/dio.dart';

class AddProjectRepo {
  final ApiService _apiService;

  AddProjectRepo(this._apiService);

  Future<ApiResult<AddProjectResponseBody>> addProject(
      AddProjectRequestBody addProjectRequestBody) async {
    try {
      const String token =
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2NWU5MDliNWQwNzIyYzZmMTFjMThmZDAiLCJpYXQiOjE3MDk3ODgxMDJ9.jXzSK6sA3HXuaR4WpTNgF3KwfddSek-9meab9--XkSU';
      final response =
          await _apiService.addProject(addProjectRequestBody, token);
      if (response.status) {
        return ApiResult.success(response);
      }
      return ApiResult.failure(
        ErrorHandler.handle('The project title already exists'),
      );
    } on DioException catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e.message));
    }
  }
}
