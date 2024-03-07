import 'package:bloc/bloc.dart';
import 'package:bug_tracking/core/data/app_data.dart';
import 'package:bug_tracking/features/home/data/repos/home_repo.dart';
import 'package:bug_tracking/features/home/logic/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  void emitUserDataState() async {
    final response = await _homeRepo.getUser('65e909b5d0722c6f11c18fd0');
    response.when(
      success: (data) {
        userData = data.data!;
        emit(HomeState.getUserSuccess(data.data!));
      },
      failure: (error) {
        emit(HomeState.getUserFailure(error.apiErrorModel.message));
      },
    );
  }
}
