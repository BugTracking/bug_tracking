import 'package:bug_tracking/core/networking/api_error_handler.dart';
import 'package:bug_tracking/core/networking/api_result.dart';
import 'package:bug_tracking/core/networking/api_service.dart';
import 'package:bug_tracking/features/home/data/models/user_response_body.dart';
import 'package:dio/dio.dart';

class HomeRepo {
  final ApiService _apiService;

  HomeRepo(this._apiService);

  Future<ApiResult<UserResponseBody>> getUser(String userId) async {
    try {
      final response = await _apiService.getUser(userId);
      return ApiResult.success(response);
    } on DioException catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e.message));
    }
  }
}
