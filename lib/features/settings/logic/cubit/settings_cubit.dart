import 'package:bug_tracking/features/settings/data/repos/settings_repo.dart';
import 'package:bug_tracking/features/settings/logic/cubit/settings_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bug_tracking/core/helpers/cache_helper.dart';

class SettingsCubit extends Cubit<SettingsState> {
  final SettingsRepo _settingsRepo;

  SettingsCubit(this._settingsRepo) : super(const SettingsState.initial());

  void emitLogOutState() async {
    await CacheHelper.removeString('token');
    await CacheHelper.removeString('userId');
    emit(const GetLogOutSuccess('You logged out sucessfully'));
  }

  void emitDeleteAccountState() async {
    emit(const GetDeleteAccLoading());
    final response = await _settingsRepo.deleteAccount(CacheHelper.userId);
    response.when(
      success: (data) async {
        await CacheHelper.removeString('token');
        await CacheHelper.removeString('userId');
        emit(GetDeleteAccSuccess(data.message!));
      },
      failure: (error) {
        emit(GetDeleteAccFailure(error));
      },
    );
  }
}
