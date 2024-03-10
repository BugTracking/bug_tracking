import 'package:bloc/bloc.dart';
import 'package:bug_tracking/core/data/app_data.dart';
import 'package:bug_tracking/core/helpers/cache_helper.dart';
import 'package:bug_tracking/features/allprojects/ui/screens/projects_screen.dart';
import 'package:bug_tracking/features/home/data/models/project_response_body.dart';
import 'package:bug_tracking/features/home/data/models/bugs_response_body.dart';
import 'package:bug_tracking/features/home/data/repos/home_repo.dart';
import 'package:bug_tracking/features/home/logic/cubit/home_state.dart';
import 'package:bug_tracking/features/home/ui/screens/home_body_screen.dart';
import 'package:bug_tracking/features/notfications/ui/screens/notfications_screen.dart';
import 'package:bug_tracking/features/settings/ui/screens/settings_screen.dart';
import 'package:flutter/material.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  List<ProjectModel>? projects;
  void emitProjectDataState() async {
    final response = await _homeRepo.getAllProjects(CacheHelper.token);
    response.when(
      success: (data) {
        projects = data.data ?? [];
        emit(HomeState.getProjectsSuccess(data.data ?? []));
      },
      failure: (error) {
        emit(HomeState.getProjectsFailure(error));
      },
    );
  }

  List<Widget> get screens => [
        const HomeBodyScreen(),
        ProjectsScreen(
          projects: projects ?? [],
        ),
        const NotficationsScreen(),
        const SettingScreen(),
      ];

  List<BugModel>? bugs;
  void emitBugDataState() async {
    final response = await _homeRepo.getAllBugs(CacheHelper.token);
    response.when(
      success: (data) {
        bugs = data.data ?? [];
        emit(HomeState.getBugsSuccess(bugs!));
      },
      failure: (error) {
        emit(HomeState.getBugsFailure(error));
      },
    );
  }

  void emitUserDataState() async {
    final response = await _homeRepo.getUser(CacheHelper.userId);
    response.when(
      success: (data) {
        userData = data.data!;
        emit(HomeState.getUserSuccess(data.data!));
      },
      failure: (error) {
        emit(HomeState.getUserFailure(error));
      },
    );
  }
}


/*
import 'package:bug_tracking/core/networking/api_constance.dart';
import 'package:bug_tracking/features/add_bug/data/models/add_bug_request_body.dart';
import 'package:bug_tracking/features/add_bug/data/models/add_bug_response_body.dart';
import 'package:bug_tracking/features/authentcation/data/models/login_request_model.dart';
import 'package:bug_tracking/features/authentcation/data/models/login_response_model.dart';
import 'package:bug_tracking/features/authentcation/data/models/register_request_model.dart';
import 'package:bug_tracking/features/authentcation/data/models/register_response_model.dart';
import 'package:bug_tracking/features/add_project/data/models/add_categories_request_body.dart';
import 'package:bug_tracking/features/add_project/data/models/add_categories_response_body.dart';
import 'package:bug_tracking/features/add_project/data/models/add_project_request_body.dart';
import 'package:bug_tracking/features/add_project/data/models/add_project_response_body.dart';
import 'package:bug_tracking/features/add_project/data/models/categories_response_body.dart';
import 'package:bug_tracking/features/home/data/models/user_response_body.dart';
import 'package:bug_tracking/features/home/data/models/project_response_body.dart';
import 'package:bug_tracking/features/home/data/models/bugs_response_body.dart';
import 'package:bug_tracking/features/project_details/data/models/project_edit_request_body.dart';
import 'package:bug_tracking/features/project_details/data/models/project_edit_response_body.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

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

  @GET('${ApiConstance.notifications}/{id}')
  Future<NotificationResponseModel> getNotfications(
      @Header('authorization') String token, @Path('id') String reciverId);

  @GET('${ApiConstance.projects}/{id}')
  Future<ProjectDetailsResponse> getProjectDetails(
      @Path('id') String projectId);

  @PUT('${ApiConstance.projects}/{id}')
  Future<ProjectEditResponseBody> editProject(
    @Path('id') String projectId,
    @Body() ProjectEditRequestBody projectEditRequestBody,
    @Header('authorization') String token,
  );

  @POST(ApiConstance.bugs)
  Future<AddBugResponseBody> addBug(
    @Body() AddBugRequestBody addBugRequestBody,
    @Header('authorization') String token,
  );

  @GET('${ApiConstance.bugs}/{id}')
  Future<BugDetailsResponseBody> getBugDetails(
    @Path('id') String bugId,
  );

  @GET('${ApiConstance.comments}/{id}')
  Future<CommentsResponseBody> getComments(
    @Path('id') String bugId,
  );

  @POST(ApiConstance.comments)
  Future<AddCommentResponseBody> addComment(
    @Header('authorization') String token,
    @Body() AddCommentRequestBody addCommentRequestBody,
  );

  @PUT('${ApiConstance.bugs}/{id}')
  Future<EditBugResponseBody> editBug(
    @Path('id') String bugId,
    @Header('authorization') String token,
    @Body() EditBugRequestBody editBugRequestBody,
  );
}

 */