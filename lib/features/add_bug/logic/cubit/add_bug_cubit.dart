import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:bug_tracking/core/helpers/permissions.dart';
import 'package:bug_tracking/core/helpers/toasts.dart';
import 'package:bug_tracking/features/add_bug/data/models/add_bug_request_body.dart';
import 'package:bug_tracking/features/add_bug/data/repos/add_bug_repo.dart';
import 'package:bug_tracking/features/add_bug/logic/cubit/add_bug_state.dart';
import 'package:bug_tracking/features/add_project/data/models/categories_response_body.dart';
import 'package:bug_tracking/features/home/data/models/user_response_body.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

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

  List<File> attachments = [];

  void emitUploadAttachmentsState() async {
    emit(const AddBugState.initial());
    if (await requestStoragePermission()) {
      ImagePicker imagePicker = ImagePicker();
      List<XFile>? files = await imagePicker.pickMultiImage(imageQuality: 100);
      if (files.isNotEmpty) {
        attachments = files.map((e) => File(e.path)).toList();
      }
    }
    emit(const AddBugState.uploadAttachments());
  }

  final TextEditingController titleController = TextEditingController();
  final TextEditingController summaryController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  List<String> memberIds = [];
  List<String> memberNames = [];
  void emitSelectMembersState(UserModel member) {
    emit(const AddBugState.initial());
    if (memberIds.contains(member.id)) {
      memberIds.remove(member.id);
      memberNames.remove(member.name);
    } else {
      memberIds.add(member.id);
      memberNames.add(member.name);
    }
    emit(const AddBugState.selectMembersSuccess());
  }

  void removeMember(String memberId, String memberName) {
    emit(const AddBugState.initial());
    memberIds.remove(memberId);
    memberNames.remove(memberName);
    emit(const AddBugState.selectMembersSuccess());
  }

  String selectedCategory = '';
  String selectedPriority = '';
  String selectedStatus = '';
  String selectedSeverity = '';
  void selectCategory(String category) {
    emit(const AddBugState.initial());
    selectedCategory = category;
    emit(const AddBugState.selectItem());
  }

  void selectPriority(String priority) {
    emit(const AddBugState.initial());
    selectedPriority = priority;
    emit(const AddBugState.selectItem());
  }

  void selectSeverity(String severity) {
    emit(const AddBugState.initial());
    selectedSeverity = severity;
    emit(const AddBugState.selectItem());
  }

  void selectStatus(String status) {
    emit(const AddBugState.initial());
    selectedStatus = status;
    emit(const AddBugState.selectItem());
  }

  void reset() {
    attachments.clear();
    titleController.clear();
    summaryController.clear();
    memberIds.clear();
    memberNames.clear();
    selectedCategory = '';
    emit(const AddBugState.initial());
  }

  void emitAddBugsState(String projectId) async {
    if (formKey.currentState!.validate() && attachments.isNotEmpty) {
      emit(const AddBugState.addBugLoading());
      final imagesResponse = await _addBugRepo.uploadAttachments(attachments);
      imagesResponse.when(
        success: (data) async {
          final addBugResponse = await _addBugRepo.addBug(
            AddBugRequestBody(
              projectId: projectId,
              title: titleController.text,
              description: summaryController.text,
              category: selectedCategory,
              priority: selectedPriority,
              severity: selectedSeverity,
              status: selectedStatus,
              members: memberIds,
              attachments: data,
            ),
          );
          addBugResponse.when(
            success: (data) => emit(
                const AddBugState.addBugSuccess('Bug Added Successesfully')),
            failure: (error) => emit(AddBugState.addBugFailure(error)),
          );
        },
        failure: (error) => emit(AddBugState.addBugFailure(error)),
      );
    } else {
      showToast(message: 'Please select at least one attachment');
    }
  }

  bool isUserWantToCreateAnotherBug = false;
  void setIsUserWantToCreateAnotherBug() {
    emit(const AddBugState.initial());
    isUserWantToCreateAnotherBug = !isUserWantToCreateAnotherBug;
    emit(const AddBugState.selectItem());
  }
}
