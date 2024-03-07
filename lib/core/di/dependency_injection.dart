import 'package:bug_tracking/core/networking/api_service.dart';
import 'package:bug_tracking/core/networking/dio_factory.dart';
import 'package:bug_tracking/features/add_project/data/repos/add_project_repo.dart';
import 'package:bug_tracking/features/add_project/logic/cubit/add_project_cubit.dart';
import 'package:bug_tracking/features/home/data/repos/home_repo.dart';
import 'package:bug_tracking/features/home/logic/cubit/home_cubit.dart';
import 'package:bug_tracking/features/on_boarding/logic/cubit/on_boarding_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() async {
  Dio dioFactory = await DioFactory.getInstance();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dioFactory));

  getIt.registerFactory<OnBoardingCubit>(() => OnBoardingCubit());

  // home
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));

  // Add Project
  getIt.registerLazySingleton<AddProjectRepo>(() => AddProjectRepo(getIt()));
  getIt.registerFactory<AddProjectCubit>(() => AddProjectCubit(getIt()));
}
