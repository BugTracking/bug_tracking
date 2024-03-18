import 'package:bloc/bloc.dart';
import 'package:bug_tracking/features/add_project/data/models/categories_response_body.dart';
import 'package:bug_tracking/features/bug_details/data/models/add_comment_request_body.dart';
import 'package:bug_tracking/features/bug_details/data/models/bug_details_response_body.dart';
import 'package:bug_tracking/features/bug_details/data/models/comments_response_body.dart';
import 'package:bug_tracking/features/bug_details/data/models/edit_bug_request_body.dart';
import 'package:bug_tracking/features/bug_details/data/repos/bug_details_repo.dart';
import 'package:bug_tracking/features/bug_details/logic/cubit/bug_details_state.dart';
import 'package:flutter/material.dart';

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
        initalizeControllers();
        emit(BugDetailsState.success(data: data));
      },
      failure: (error) {
        emit(BugDetailsState.failure(error: error));
      },
    );
  }

  List<CommentData>? comments;

  void emitCommentsState(String bugId) async {
    final response = await _bugDetailsRepo.getComments(bugId);
    response.when(
      success: (data) {
        comments = data.data;
        emit(BugDetailsState.commentsSuccess(data: data));
      },
      failure: (error) {
        emit(BugDetailsState.commentsFailure(error: error));
      },
    );
  }

  final TextEditingController commentController = TextEditingController();
  final commentFormKey = GlobalKey<FormState>();

  void addComment(String bugId) async {
    FocusManager.instance.primaryFocus?.unfocus();
    if (commentFormKey.currentState!.validate()) {
      final response = await _bugDetailsRepo.addComment(
        AddCommentRequestBody(
          commentController.text,
          bugId,
        ),
      );
      response.when(
        success: (data) {
          commentController.clear();
          comments?.add(data.data!);
          emit(BugDetailsState.addCommentsSuccess(data: data));
        },
        failure: (error) {
          emit(BugDetailsState.addCommentsFailure(error: error));
        },
      );
    }
  }

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  String categorySelected = '';
  String prioritySelected = '';
  String statusSelected = '';
  String severitySelected = '';
  final editFormKey = GlobalKey<FormState>();

  List<CategoryModel>? categories;
  void emitCategoriesState() async {
    emit(const BugDetailsState.categoriesLoading());
    final response = await _bugDetailsRepo.getCategories();
    response.when(
      success: (data) {
        categories = data.categories;
        emit(BugDetailsState.categoriesSuccess(data: data));
      },
      failure: (error) {
        emit(BugDetailsState.categoriesFailure(error: error));
      },
    );
  }

  void initalizeControllers() {
    titleController.text = bugDetailsModel?.bug.title ?? '';
    descriptionController.text = bugDetailsModel?.bug.description ?? '';
    categorySelected = bugDetailsModel?.bug.category.id ?? '';
    prioritySelected = bugDetailsModel?.bug.priority ?? '';
    statusSelected = bugDetailsModel?.bug.status ?? '';
    severitySelected = bugDetailsModel?.bug.severity ?? '';
  }

  void selectCategory(String category) {
    emit(const BugDetailsState.initial());
    categorySelected =
        categories?.where((element) => element.title == category).first.id ??
            '';
    emit(const BugDetailsState.selectItem());
  }

  void selectPriority(String priority) {
    emit(const BugDetailsState.initial());
    prioritySelected = priority;
    emit(const BugDetailsState.selectItem());
  }

  void selectStatus(String status) {
    emit(const BugDetailsState.initial());
    statusSelected = status;
    emit(const BugDetailsState.selectItem());
  }

  void selectSeverity(String severity) {
    emit(const BugDetailsState.initial());
    severitySelected = severity;
    emit(const BugDetailsState.selectItem());
  }

  void emitEditBugState(String bugId) async {
    FocusManager.instance.primaryFocus?.unfocus();
    if (editFormKey.currentState!.validate()) {
      emit(const BugDetailsState.editBugLoading());
      final response = await _bugDetailsRepo.editBug(
        EditBugRequestBody(
          title: titleController.text,
          description: descriptionController.text,
          categoryId: categorySelected,
          priority: prioritySelected,
          status: statusSelected,
          severity: severitySelected,
        ),
        bugId,
      );
      response.when(
        success: (data) async {
          emit(BugDetailsState.editBugSuccess(data: data));
        },
        failure: (error) {
          emit(BugDetailsState.editBugFailure(error: error));
        },
      );
    }
  }
}
