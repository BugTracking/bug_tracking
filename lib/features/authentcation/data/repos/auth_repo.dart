import 'package:bug_tracking/core/networking/api_result.dart';
import 'package:bug_tracking/core/networking/api_service.dart';
import 'package:bug_tracking/features/authentcation/data/models/login_request_model.dart';
import 'package:bug_tracking/features/authentcation/data/models/login_response_model.dart';
import 'package:dio/dio.dart';
import 'package:bug_tracking/features/authentcation/data/models/register_request_model.dart';
import 'package:bug_tracking/features/authentcation/data/models/register_response_model.dart';

class AuthRepo {
  final ApiService _apiService;

  AuthRepo(this._apiService);

  Future<ApiResult<LoginResponseModel>> login(
      LoginRequestModel loginRequestModel) async {
    try {
      final response = await _apiService.login(loginRequestModel);
      if (response.status) {
        return ApiResult.success(response);
      }
      return ApiResult.failure(
        response.message ?? '',
      );
    } on DioException catch (e) {
      return ApiResult.failure(
        e.message ?? '',
      );
    }
  }

  Future<ApiResult<RegisterResponseModel>> register(
      RegisterRequestModel registerRequestModel) async {
    try {
      final response = await _apiService.register(registerRequestModel);
      if (response.status) {
        return ApiResult.success(response);
      }
      return ApiResult.failure(
        response.message ?? '',
      );
    } on DioException catch (e) {
      return ApiResult.failure(
        e.message ?? '',
      );
    }
  }
}
