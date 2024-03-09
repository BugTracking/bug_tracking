import 'package:bug_tracking/core/networking/api_service.dart';
import 'package:bug_tracking/core/networking/dio_factory.dart';
import 'package:bug_tracking/features/allprojects/logic/cubit/projects_cubit.dart';
import 'package:bug_tracking/features/authentcation/data/repos/auth_repo.dart';
import 'package:bug_tracking/features/authentcation/logic/cubit/auth_cubit.dart';
import 'package:bug_tracking/features/add_project/data/repos/add_project_repo.dart';
import 'package:bug_tracking/features/add_project/logic/cubit/add_project_cubit.dart';
import 'package:bug_tracking/features/edit_profile/data/repos/edit_profile_repo.dart';
import 'package:bug_tracking/features/edit_profile/logic/cubit/edit_profile_cubit.dart';
import 'package:bug_tracking/features/home/data/repos/home_repo.dart';
import 'package:bug_tracking/features/home/logic/cubit/home_cubit.dart';
import 'package:bug_tracking/features/notfications/data/repos/notfication_repo.dart';
import 'package:bug_tracking/features/notfications/logic/cubit/notfication_cubit.dart';
import 'package:bug_tracking/features/on_boarding/logic/cubit/on_boarding_cubit.dart';
import 'package:bug_tracking/features/project_details/data/repos/project_details_repo.dart';
import 'package:bug_tracking/features/project_details/logic/cubit/project_details_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

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


  // editProfile
  getIt.registerLazySingleton<EditProfileRepo>(() => EditProfileRepo(getIt()));
  getIt.registerFactory<EditProfileCubit>(() => EditProfileCubit(getIt()));

  // notfication
  getIt.registerLazySingleton<NotficationRepo>(() => NotficationRepo(getIt()));
  getIt.registerFactory<NotficationCubit>(() => NotficationCubit(getIt()));


}
