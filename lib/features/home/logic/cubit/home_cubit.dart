import 'package:bloc/bloc.dart';
import 'package:bug_tracking/core/data/app_data.dart';
import 'package:bug_tracking/core/helpers/cache_helper.dart';
import 'package:bug_tracking/features/home/data/models/project_response_body.dart';
import 'package:bug_tracking/features/home/data/repos/home_repo.dart';
import 'package:bug_tracking/features/home/logic/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  List<ProjectModel> projects = [];
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




  void emitUserDataState() async {
    final response = await _homeRepo.getUser('65e875faac8199af8b808772');
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
