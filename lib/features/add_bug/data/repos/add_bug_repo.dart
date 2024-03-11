import 'dart:io';

import 'package:bug_tracking/core/helpers/cache_helper.dart';
import 'package:bug_tracking/core/networking/api_constance.dart';
import 'package:bug_tracking/core/networking/api_result.dart';
import 'package:bug_tracking/core/networking/api_service.dart';
import 'package:bug_tracking/core/networking/dio_factory.dart';
import 'package:bug_tracking/features/add_bug/data/models/add_bug_request_body.dart';
import 'package:bug_tracking/features/add_bug/data/models/add_bug_response_body.dart';
import 'package:bug_tracking/features/add_project/data/models/categories_response_body.dart';
import 'package:bug_tracking/features/add_project/data/models/sent_notification_request_body.dart';
import 'package:bug_tracking/features/home/data/models/device_token_response_body.dart';
import 'package:bug_tracking/features/notfications/data/models/add_notification_request_body.dart';
import 'package:bug_tracking/features/notfications/data/models/add_notification_response_body.dart';
import 'package:dio/dio.dart';
import 'package:firebase_storage/firebase_storage.dart';

class AddBugRepo {
  final ApiService _apiService;

  AddBugRepo(this._apiService);

  Future<ApiResult<CategoriesResponseBody>> getCategories() async {
    try {
      final response = await _apiService.getCategories();
      if (response.status) {
        return ApiResult.success(response);
      }
      return ApiResult.failure('Failed to get categories');
    } on DioException catch (e) {
      return ApiResult.failure(e.message ?? '');
    }
  }

  Future<ApiResult<AddBugResponseBody>> addBug(
      AddBugRequestBody addBugRequestBody) async {
    final String token = CacheHelper.token;
    try {
      final response = await _apiService.addBug(addBugRequestBody, token);
      if (response.status) {
        return ApiResult.success(response);
      }
      return ApiResult.failure(response.message ?? 'Failed to add bug');
    } on DioException catch (e) {
      return ApiResult.failure(e.message ?? '');
    }
  }

  Future<ApiResult<List<String>>> uploadAttachments(List<File> files) async {
    List<String> downloadUrls = [];
    try {
      for (File file in files) {
        String filePath =
            'bugs/${DateTime.now().millisecondsSinceEpoch}_${file.path}';
        Reference reference = FirebaseStorage.instance.ref().child(filePath);
        await reference.putFile(file);
        final String downloadUrl = await reference.getDownloadURL();
        downloadUrls.add(downloadUrl);
      }
      return ApiResult.success(downloadUrls);
    } on FirebaseException catch (e) {
      return ApiResult.failure(e.message ?? '');
    }
  }

  Future<ApiResult<AddNotificationsResponseBody>> addNotifications(
      AddNotificationsRequestBody addNotificationsRequestBody) async {
    final String token = CacheHelper.token;
    try {
      final response = await _apiService.addNotification(
        addNotificationsRequestBody,
        token,
      );
      if (response.status) {
        return ApiResult.success(response);
      }
      return ApiResult.failure(response.message ?? '');
    } on DioException catch (e) {
      return ApiResult.failure(e.message ?? '');
    }
  }

  Future<ApiResult<List<DeviceTokenResponseBody>>> getTokens(
      List<String> userIds) async {
    try {
      List<DeviceTokenResponseBody> tokens = [];
      for (String userId in userIds) {
        final response = await _apiService.getDeviceToken(userId);
        if (response.data != null) {
          tokens.add(response);
        }
      }
      return ApiResult.success(tokens);
    } on DioException catch (e) {
      return ApiResult.failure(e.message ?? 'Failed to get token');
    }
  }

  Future<ApiResult<bool>> sentNotification(
    List<SentNotificationRequestBody> requests,
  ) async {
    Dio dio = await DioFactory.getInstance();
    ApiService apiService = ApiService(dio, baseUrl: ApiConstance.fcmUrl);
    const String token = ApiConstance.serverKey;
    try {
      for (int i = 0; i < requests.length; i++) {
        await apiService.sendNotification(
          token,
          requests[i],
        );
      }
      return ApiResult.success(true);
    } on DioException catch (e) {
      return ApiResult.failure(e.message ?? 'Failed to send notification');
    }
  }
}
