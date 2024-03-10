import 'package:bloc/bloc.dart';

import 'package:bug_tracking/core/helpers/cache_helper.dart';
import 'package:bug_tracking/features/notfications/data/models/notfication_response_model.dart';

import 'package:bug_tracking/features/notfications/data/repos/notfication_repo.dart';
import 'package:bug_tracking/features/notfications/logic/cubit/notfication_state.dart';

class NotficationCubit extends Cubit<NotficationState> {
  final NotficationRepo _notficationRepo;

  NotficationCubit(this._notficationRepo)
      : super(const NotficationState.initial());

  List<NotificationData>? notfications;

  void emitNotficationState() async {
    final response = await _notficationRepo.getAllNotfications(
        CacheHelper.token, CacheHelper.userId);
    response.when(
      success: (data) {
        notfications = data.data;
        emit(GetNotficationSuccess(notfications!));
      },
      failure: (error) {
        emit(GetNotficationFailure(error));
      },
    );
  }
}
