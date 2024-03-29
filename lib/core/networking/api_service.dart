import 'package:bug_tracking/core/networking/api_constance.dart';
import 'package:bug_tracking/features/add_bug/data/models/add_bug_request_body.dart';
import 'package:bug_tracking/features/add_bug/data/models/add_bug_response_body.dart';
import 'package:bug_tracking/features/add_project/data/models/sent_notification_request_body.dart';
import 'package:bug_tracking/features/authentcation/data/models/login_request_model.dart';
import 'package:bug_tracking/features/authentcation/data/models/login_response_model.dart';
import 'package:bug_tracking/features/authentcation/data/models/register_request_model.dart';
import 'package:bug_tracking/features/authentcation/data/models/register_response_model.dart';
import 'package:bug_tracking/features/add_project/data/models/add_categories_request_body.dart';
import 'package:bug_tracking/features/add_project/data/models/add_categories_response_body.dart';
import 'package:bug_tracking/features/add_project/data/models/add_project_request_body.dart';
import 'package:bug_tracking/features/add_project/data/models/add_project_response_body.dart';
import 'package:bug_tracking/features/add_project/data/models/categories_response_body.dart';
import 'package:bug_tracking/features/bug_details/data/models/add_comment_request_body.dart';
import 'package:bug_tracking/features/bug_details/data/models/add_comment_response_body.dart';
import 'package:bug_tracking/features/bug_details/data/models/bug_details_response_body.dart';
import 'package:bug_tracking/features/bug_details/data/models/comments_response_body.dart';
import 'package:bug_tracking/features/bug_details/data/models/edit_bug_request_body.dart';
import 'package:bug_tracking/features/bug_details/data/models/edit_bug_response_body.dart';
import 'package:bug_tracking/features/edit_profile/data/models/user_edit_request_model.dart';
import 'package:bug_tracking/features/home/data/models/device_token_request_body.dart';
import 'package:bug_tracking/features/home/data/models/device_token_response_body.dart';
import 'package:bug_tracking/features/home/data/models/user_response_body.dart';
import 'package:bug_tracking/features/home/data/models/project_response_body.dart';
import 'package:bug_tracking/features/home/data/models/bugs_response_body.dart';
import 'package:bug_tracking/features/members/data/model/member_request_model.dart';
import 'package:bug_tracking/features/members/data/model/member_response_model.dart';
import 'package:bug_tracking/features/notfications/data/models/add_notification_request_body.dart';
import 'package:bug_tracking/features/notfications/data/models/add_notification_response_body.dart';
import 'package:bug_tracking/features/project_details/data/models/project_edit_request_body.dart';
import 'package:bug_tracking/features/project_details/data/models/project_edit_response_body.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import '../../features/edit_profile/data/models/user_response_model.dart';
import '../../features/notfications/data/models/notfication_response_model.dart';
import '../../features/project_details/data/models/project_details_response.dart';
import '../../features/settings/data/models/delete_acc_response_model.dart';
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

  @DELETE('${ApiConstance.users}/{id}')
  Future<DeleteAccResponseModel> deleteAccount(
    @Path('id') String userId,
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

  @POST(ApiConstance.users)
  Future<AddMemberResponseBody> addmember(
    @Body() AddMemberModel addMemberModel,
    @Header('authorization') String token,
  );
  @POST(ApiConstance.deviceTokens)
  Future<DeviceTokenResponseBody> addDeviceToken(
    @Body() DeviceTokenRequestBody deviceTokenRequestBody,
    @Header('authorization') String token,
  );

  @GET('${ApiConstance.deviceTokens}/{id}')
  Future<DeviceTokenResponseBody> getDeviceToken(
    @Path('id') String userId,
  );

  @POST(ApiConstance.notifications)
  Future<AddNotificationsResponseBody> addNotification(
    @Body() AddNotificationsRequestBody addNotificationRequestBody,
    @Header('authorization') String token,
  );

  @POST(ApiConstance.fcmEndpoint)
  Future<int> sendNotification(
    @Header('Authorization') String token,
    @Body() SentNotificationRequestBody sentProjectNotificationRequestBody,
  );
}
