import 'package:bloc/bloc.dart';
import 'package:bug_tracking/features/add_bug/data/repos/add_bug_repo.dart';
import 'package:bug_tracking/features/add_bug/logic/cubit/add_bug_state.dart';
import 'package:bug_tracking/features/add_project/data/models/categories_response_body.dart';

class AddBugCubit extends Cubit<AddBugState> {
  final AddBugRepo _addBugRepo;
  AddBugCubit(this._addBugRepo) : super(const AddBugState.initial());

  List<CategoryModel> categories = [];
  void emitCategoriesState() async {
    final response = await _addBugRepo.getCategories();
    response.when(
      success: (data) {
        categories = data.categories;
        emit(const AddBugState.categoriesSuccess());
      },
      failure: (error) => emit(const AddBugState.categoriesFailure()),
    );
  }
}
