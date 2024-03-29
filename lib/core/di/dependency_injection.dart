import 'package:bug_tracking/core/networking/api_service.dart';
import 'package:bug_tracking/core/networking/dio_factory.dart';
import 'package:bug_tracking/features/add_bug/data/repos/add_bug_repo.dart';
import 'package:bug_tracking/features/add_bug/logic/cubit/add_bug_cubit.dart';
import 'package:bug_tracking/features/allbugs/logic/cubit/bugs_cubit.dart';
import 'package:bug_tracking/features/allprojects/logic/cubit/projects_cubit.dart';
import 'package:bug_tracking/features/authentcation/data/repos/auth_repo.dart';
import 'package:bug_tracking/features/authentcation/logic/cubit/auth_cubit.dart';
import 'package:bug_tracking/features/add_project/data/repos/add_project_repo.dart';
import 'package:bug_tracking/features/add_project/logic/cubit/add_project_cubit.dart';
import 'package:bug_tracking/features/bug_details/data/repos/bug_details_repo.dart';
import 'package:bug_tracking/features/bug_details/logic/cubit/bug_details_cubit.dart';
import 'package:bug_tracking/features/home/data/repos/home_repo.dart';
import 'package:bug_tracking/features/home/logic/cubit/home_cubit.dart';
import 'package:bug_tracking/features/members/data/repos/add_member_repo.dart';
import 'package:bug_tracking/features/members/logic/member_cubit.dart';
import 'package:bug_tracking/features/notfications/data/repos/notfication_repo.dart';
import 'package:bug_tracking/features/notfications/logic/cubit/notfication_cubit.dart';
import 'package:bug_tracking/features/on_boarding/logic/cubit/on_boarding_cubit.dart';
import 'package:bug_tracking/features/project_details/data/repos/project_details_repo.dart';
import 'package:bug_tracking/features/project_details/logic/cubit/project_details_cubit.dart';
import 'package:bug_tracking/features/settings/data/repos/settings_repo.dart';
import 'package:bug_tracking/features/settings/logic/cubit/settings_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:bug_tracking/features/edit_profile/data/repos/edit_profile_repo.dart';
import 'package:bug_tracking/features/edit_profile/logic/cubit/edit_profile_cubit.dart';

final getIt = GetIt.instance;

void setupGetIt() async {
  Dio dioFactory = await DioFactory.getInstance();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dioFactory));
  // Onboarding
  getIt.registerFactory<OnBoardingCubit>(() => OnBoardingCubit());

  // Auth
  getIt.registerLazySingleton<AuthRepo>(() => AuthRepo(getIt()));
  getIt.registerFactory<AuthCubit>(() => AuthCubit(getIt()));
  // home
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));

  // Add Project
  getIt.registerLazySingleton<AddProjectRepo>(() => AddProjectRepo(getIt()));
  getIt.registerFactory<AddProjectCubit>(() => AddProjectCubit(getIt()));

  // Project Details
  getIt.registerLazySingleton<ProjectDetailsRepo>(
      () => ProjectDetailsRepo(getIt()));
  getIt
      .registerFactory<ProjectDetailsCubit>(() => ProjectDetailsCubit(getIt()));

  // Projects
  getIt.registerFactory<ProjectsCubit>(() => ProjectsCubit());

  // bugs
  getIt.registerFactory<BugsCubit>(() => BugsCubit());

  // notfication
  getIt.registerLazySingleton<NotficationRepo>(() => NotficationRepo(getIt()));
  getIt.registerFactory<NotficationCubit>(() => NotficationCubit(getIt()));

  // Add bug
  getIt.registerLazySingleton<AddBugRepo>(() => AddBugRepo(getIt()));
  getIt.registerFactory<AddBugCubit>(() => AddBugCubit(getIt()));

  // bug details
  getIt.registerLazySingleton<BugDetailsRepo>(() => BugDetailsRepo(getIt()));
  getIt.registerFactory<BugDetailsCubit>(() => BugDetailsCubit(getIt()));

  //member

  getIt.registerLazySingleton<MembersRepo>(() => MembersRepo(getIt()));
  getIt.registerFactory<MembersCubit>(() => MembersCubit(getIt()));

  // editprofile
  getIt.registerLazySingleton<EditProfileRepo>(() => EditProfileRepo(getIt()));
  getIt.registerFactory<EditProfileCubit>(() => EditProfileCubit(getIt()));

  // settings
  getIt.registerLazySingleton<SettingsRepo>(() => SettingsRepo(getIt()));
  getIt.registerFactory<SettingsCubit>(() => SettingsCubit(getIt()));
}
