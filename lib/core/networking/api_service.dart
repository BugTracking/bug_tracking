import 'package:bug_tracking/core/networking/api_constance.dart';
import 'package:bug_tracking/features/add_project/data/models/add_categories_request_body.dart';
import 'package:bug_tracking/features/add_project/data/models/add_categories_response_body.dart';
import 'package:bug_tracking/features/add_project/data/models/add_project_request_body.dart';
import 'package:bug_tracking/features/add_project/data/models/add_project_response_body.dart';
import 'package:bug_tracking/features/add_project/data/models/categories_response_body.dart';
import 'package:bug_tracking/features/home/data/models/user_response_body.dart';
import 'package:dio/dio.dart';
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

  @GET(ApiConstance.categories)
  Future<CategoriesResponseBody> getCategories();

  @POST(ApiConstance.categories)
  Future<AddCategoriesResponseBody> addCategories(
      @Body() AddCategoriesRequestBody addCategoriesRequestBody);

  @POST(ApiConstance.projects)
  Future<AddProjectResponseBody> addProject(
    @Body() AddProjectRequestBody addProjectRequestBody,
    @Header('authorization') String token,
  );
}
