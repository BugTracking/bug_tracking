import 'package:bloc/bloc.dart';
import 'package:bug_tracking/features/bug_details/data/models/bug_details_response_body.dart';
import 'package:bug_tracking/features/bug_details/data/repos/bug_details_repo.dart';
import 'package:bug_tracking/features/bug_details/logic/cubit/bug_details_state.dart';

class BugDetailsCubit extends Cubit<BugDetailsState> {
  final BugDetailsRepo _bugDetailsRepo;
  BugDetailsCubit(this._bugDetailsRepo)
      : super(const BugDetailsState.initial());

  BugDetailsModel? bugDetailsModel;

  void emitBugDetailsState(String bugId) async {
    emit(const BugDetailsState.loading());
    final response = await _bugDetailsRepo.getBugDetails(bugId);
    response.when(
      success: (data) {
        bugDetailsModel = data.data;
        emit(BugDetailsState.success(data: data));
      },
      failure: (error) {
        emit(BugDetailsState.failure(error: error));
      },
    );
  }
}
