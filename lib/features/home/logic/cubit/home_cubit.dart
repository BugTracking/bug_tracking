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
