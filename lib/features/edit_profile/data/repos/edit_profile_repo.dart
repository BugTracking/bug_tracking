import 'package:bug_tracking/core/data/app_data.dart';
import 'package:bug_tracking/core/networking/api_result.dart';
import 'package:bug_tracking/core/networking/api_service.dart';
import 'package:bug_tracking/features/edit_profile/data/models/user_edit_request_model.dart';
import 'package:bug_tracking/features/home/data/models/user_response_body.dart';
import 'package:dio/dio.dart';
import '../models/user_response_model.dart';
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';

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

  Future<ApiResult<UserResponseModel>> editUser(
      String userId, UserEditRequestModel userEditRequestModel) async {
    try {
      final response = await _apiService.editProfile(
        userId,
        userEditRequestModel,
      );
      if (response.status) {
        return ApiResult.success(response);
      }
      return ApiResult.failure(response.message ?? '');
    } on DioException catch (e) {
      return ApiResult.failure(e.message ?? '');
    }
  }

  Future<ApiResult<String>> uploadAttachment(File file) async {
    try {
      String filePath =
          'users/${DateTime.now().millisecondsSinceEpoch}_${userData.user.id}';
      Reference reference = FirebaseStorage.instance.ref().child(filePath);
      await reference.putFile(file);
      final String downloadUrl = await reference.getDownloadURL();
      return ApiResult.success(downloadUrl);
    } on FirebaseException catch (e) {
      return ApiResult.failure(e.message ?? '');
    }
  }
}
