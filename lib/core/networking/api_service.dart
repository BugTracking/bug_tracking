import 'package:bug_tracking/core/networking/api_constance.dart';
import 'package:bug_tracking/features/allprojects/data/model/project_response_body.dart';

import 'package:bug_tracking/features/home/data/models/user_response_body.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstance.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstance.login)
  Future<Map<String, String>> login(@Body() Map<String, String> body);

  @GET('${ApiConstance.users}/{id}')
  Future<UserResponseBody> getUser(@Path('id') String userId);


    @GET(ApiConstance.projects)
  Future<ProjectREsponseBody>getProjects ( @Key('token') String token );
}
