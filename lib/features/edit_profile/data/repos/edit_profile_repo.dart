
import 'package:bug_tracking/core/networking/api_result.dart';
import 'package:bug_tracking/core/networking/api_service.dart';
import 'package:bug_tracking/features/home/data/models/user_response_body.dart';
import 'package:dio/dio.dart';
import '../models/user_edit_request_model.dart';
import '../models/user_response_model.dart';

class EditProfileRepo {
  final ApiService _apiService;

  EditProfileRepo(this._apiService);

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

  Future<ApiResult<UserResponseModel>> editUser(String userId,UserEditRequestModel userEditRequestModel ) async {
    try {
      final response = await _apiService.editProfile(userId,userEditRequestModel);
      if (response.status) {
        return ApiResult.success(response);
      }
      return ApiResult.failure(response.message ?? '');
    } on DioException catch (e) {
      return ApiResult.failure(e.message ?? '');
    }
  }


}
