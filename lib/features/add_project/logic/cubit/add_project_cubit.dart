import 'package:bloc/bloc.dart';
import 'package:bug_tracking/features/add_project/data/models/add_categories_request_body.dart';
import 'package:bug_tracking/features/add_project/data/models/add_project_request_body.dart';
import 'package:bug_tracking/features/add_project/data/models/categories_response_body.dart';
import 'package:bug_tracking/features/add_project/data/repos/add_project_repo.dart';
import 'package:bug_tracking/features/add_project/logic/cubit/add_project_state.dart';
import 'package:bug_tracking/features/home/data/models/user_response_body.dart';
import 'package:flutter/material.dart';

class AddProjectCubit extends Cubit<AddProjectState> {
  final AddProjectRepo _addProjectRepo;
  AddProjectCubit(this._addProjectRepo)
      : super(const AddProjectState.initial());

  List<String> memberIds = [];
  List<String> memberNames = [];
  void emitSelectMembersState(UserModel member) {
    emit(const AddProjectState.initial());
    if (memberIds.contains(member.id)) {
      memberIds.remove(member.id);
      memberNames.remove(member.name);
    } else {
      memberIds.add(member.id);
      memberNames.add(member.name);
    }
    emit(const AddProjectState.selectMembersSuccess());
  }

  void removeMember(String memberId, String memberName) {
    emit(const AddProjectState.initial());
    memberIds.remove(memberId);
    memberNames.remove(memberName);
    emit(const AddProjectState.selectMembersSuccess());
  }

  List<CategoryModel> categories = [];
  void emitGetCategoriesState() async {
    emit(const AddProjectState.getCategoriesLoading());
    final response = await _addProjectRepo.getCategories();
    response.when(
      success: (data) {
        categories = data.categories;
        emit(const AddProjectState.getCategoriesSuccess());
      },
      failure: (failure) => emit(
        AddProjectState.error(
          message: failure,
        ),
      ),
    );
  }

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController categoryController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  List<CategoryModel> categoryFilteredList = [];
  void emitFilterCategories(String text) {
    emit(const AddProjectState.initial());
    categoryFilteredList = categories
        .where((element) =>
            element.title.toLowerCase().contains(text.toLowerCase()))
        .toList();
    emit(const AddProjectState.filterCategoriesSuccess());
  }

  List<String> categoryTitles = [];
  void emitSelectCategoriesState(String categoryTitle) {
    emit(const AddProjectState.initial());
    if (categoryTitle != '') {
      if (categoryTitles.contains(categoryTitle)) {
        categoryTitles.remove(categoryTitle);
      } else {
        categoryTitles.add(categoryTitle);
      }
      categoryFilteredList = [];
      categoryController.text = '';
    }
    emit(const AddProjectState.selectCategoriesSuccess());
  }

  void removeCategory(String categoryTitle) {
    emit(const AddProjectState.initial());
    categoryTitles.remove(categoryTitle);
    emit(const AddProjectState.selectCategoriesSuccess());
  }

  void emitAddCategoryState() async {
    emit(const AddProjectState.addCategoriesLoading());
    final response = await _addProjectRepo.addCategories(
      AddCategoriesRequestBody(
        categories: categoryTitles,
      ),
    );
    response.when(
      success: (data) => emit(const AddProjectState.addCategoriesSuccess()),
      failure: (failure) => emit(
        AddProjectState.addCategoriesError(failure),
      ),
    );
  }

  void emitAddProjectState() async {
    if (formKey.currentState!.validate()) {
      emitAddCategoryState();
      emit(const AddProjectState.loading());
      final response = await _addProjectRepo.addProject(
        AddProjectRequestBody(
          title: titleController.text,
          description: descriptionController.text,
          members: memberIds,
          status: 'Open',
        ),
      );
      response.when(
        success: (data) => emit(const AddProjectState.success()),
        failure: (failure) => emit(
          AddProjectState.error(
            message: failure,
          ),
        ),
      );
    }
  }
}
