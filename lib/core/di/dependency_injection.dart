import 'package:bug_tracking/core/networking/api_service.dart';
import 'package:bug_tracking/core/networking/dio_factory.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() async {
  Dio dioFactory = await DioFactory.getInstance();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dioFactory));
}
