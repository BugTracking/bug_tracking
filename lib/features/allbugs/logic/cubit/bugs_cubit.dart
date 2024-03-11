import 'package:bloc/bloc.dart';
import 'package:bug_tracking/features/allbugs/logic/cubit/bugs_state.dart';
import 'package:bug_tracking/features/home/data/models/bugs_response_body.dart';

class BugsCubit extends Cubit<BugsState> {
  BugsCubit() : super(const BugsState.initial());

  String bugStatusSelected = 'All Statuses';

  void selectBugStatus(String status) {
    emit(const BugsState.initial());
    bugStatusSelected = status;
    emit(const BugsState.selectItem());
  }

  List<BugModel>? filteredBugs;
  void emitFilterBugs(List<BugModel> bugs) {
    emit(const BugsState.initial());
    if (bugStatusSelected == 'All Statuses') {
      emitResetFilter();
    } else {
      filteredBugs =
          bugs.where((element) => element.status == bugStatusSelected).toList();
      emit(const BugsState.filterBugs());
    }
  }

  void emitResetFilter() {
    emit(const BugsState.initial());
    bugStatusSelected = 'All Statuses';
    filteredBugs = null;
    emit(const BugsState.filterBugs());
  }
}
