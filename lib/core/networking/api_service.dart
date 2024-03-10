import 'package:bug_tracking/core/networking/api_constance.dart';
import 'package:bug_tracking/features/authentcation/data/models/login_request_model.dart';
import 'package:bug_tracking/features/authentcation/data/models/login_response_model.dart';
import 'package:bug_tracking/features/authentcation/data/models/register_request_model.dart';
import 'package:bug_tracking/features/authentcation/data/models/register_response_model.dart';
import 'package:bug_tracking/features/add_project/data/models/add_categories_request_body.dart';
import 'package:bug_tracking/features/add_project/data/models/add_categories_response_body.dart';
import 'package:bug_tracking/features/add_project/data/models/add_project_request_body.dart';
import 'package:bug_tracking/features/add_project/data/models/add_project_response_body.dart';
import 'package:bug_tracking/features/add_project/data/models/categories_response_body.dart';
import 'package:bug_tracking/features/edit_profile/data/models/user_edit_request_model.dart';
import 'package:bug_tracking/features/home/data/models/user_response_body.dart';
import 'package:bug_tracking/features/home/data/models/project_response_body.dart';
import 'package:bug_tracking/features/home/data/models/bugs_response_body.dart';
import 'package:bug_tracking/features/project_details/data/models/project_edit_request_body.dart';
import 'package:bug_tracking/features/project_details/data/models/project_edit_response_body.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/edit_profile/data/models/user_response_model.dart';
import '../../features/project_details/data/models/project_details_response.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstance.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstance.login)
  Future<LoginResponseModel> login(@Body() LoginRequestModel loginRequestModel);

  @POST(ApiConstance.register)
  Future<RegisterResponseModel> register(
      @Body() RegisterRequestModel registerRequestModel);

  @GET('${ApiConstance.users}/{id}')
  Future<UserResponseBody> getUser(@Path('id') String userId);

  @PUT('${ApiConstance.users}/{id}')
  Future<UserResponseModel> editProfile(
      @Path('id') String userId,
      @Body() UserEditRequestModel userEditRequestModel,
      );

  @GET(ApiConstance.projects)
  Future<ProjectResponseBody> getProjects(
    @Header('authorization') String token,
  );
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

  @GET(ApiConstance.bugs)
  Future<BugResponseBody> getBugs(
    @Header('authorization') String token,
  );
  @GET('${ApiConstance.projects}/{id}')
  Future<ProjectDetailsResponse> getProjectDetails(
      @Path('id') String projectId);

  @PUT('${ApiConstance.projects}/{id}')
  Future<ProjectEditResponseBody> editProject(
    @Path('id') String projectId,
    @Body() ProjectEditRequestBody projectEditRequestBody,
    @Header('authorization') String token,
  );
}
