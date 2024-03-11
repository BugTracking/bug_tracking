
import 'package:bug_tracking/core/networking/api_result.dart';
import 'package:bug_tracking/core/networking/api_service.dart';
import 'package:bug_tracking/features/settings/data/models/delete_acc_response_model.dart';
import 'package:dio/dio.dart';

class SettingsRepo {
  final ApiService _apiService;

  SettingsRepo(this._apiService);


  Future<ApiResult<DeleteAccResponseModel>> deleteAccount(String userId) async {
    try {
      final response = await _apiService.deleteAccount(userId);
      if (response.status) {

        return ApiResult.success(response);
      }
      return ApiResult.failure(response.message ?? '');
    } on DioException catch (e) {
      return ApiResult.failure(e.message ?? '');
    }
  }


}
