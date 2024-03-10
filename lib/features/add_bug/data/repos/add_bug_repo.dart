import 'dart:io';

import 'package:bug_tracking/core/helpers/cache_helper.dart';
import 'package:bug_tracking/core/networking/api_result.dart';
import 'package:bug_tracking/core/networking/api_service.dart';
import 'package:bug_tracking/features/add_bug/data/models/add_bug_request_body.dart';
import 'package:bug_tracking/features/add_bug/data/models/add_bug_response_body.dart';
import 'package:bug_tracking/features/add_project/data/models/categories_response_body.dart';
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
}
