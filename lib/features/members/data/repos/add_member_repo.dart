import 'package:bug_tracking/core/networking/api_result.dart';
import 'package:bug_tracking/core/networking/api_service.dart';
import 'package:bug_tracking/features/home/data/models/user_response_body.dart';

import 'package:dio/dio.dart';

class MembersRepo {
  final ApiService _apiService;

  MembersRepo(this._apiService);

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

  // Future<ApiResult<AddMemberResponseBody>> addMember(
  //     AddMemberResponseBody addMemberResponseBody) async {
  //   try {
  //     final String token = CacheHelper.token;
  //     final response =
  //         await _apiService.addmember(addMemberResponseBody, token);
  //     if (response.status) {
  //       return ApiResult.success(response);
  //     }
  //     return ApiResult.failure(response.message ?? '');
  //   } on DioException catch (e) {
  //     return ApiResult.failure(e.message ?? '');
  //   }
  // }
}
