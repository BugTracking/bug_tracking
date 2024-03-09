
import 'package:bug_tracking/core/networking/api_result.dart';
import 'package:bug_tracking/core/networking/api_service.dart';
import 'package:bug_tracking/features/notfications/data/models/notfication_response_model.dart';
import 'package:dio/dio.dart';

class NotficationRepo {
  final ApiService _apiService;

  NotficationRepo(this._apiService);


  Future<ApiResult<NotificationResponseModel>> getAllNotfications(String token,String recieverId) async {
    try {
      final response = await _apiService.getNotfications(token,recieverId);
      if (response.status) {

        return ApiResult.success(response);
      }
      return ApiResult.failure(response.messege ?? '');
    } on DioException catch (e) {
      return ApiResult.failure(e.message ?? '');
    }
  }


}
