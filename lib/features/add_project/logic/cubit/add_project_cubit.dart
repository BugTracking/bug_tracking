import 'package:bloc/bloc.dart';
import 'package:bug_tracking/features/add_project/data/models/add_project_request_body.dart';
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
    emit(const AddProjectState.selectMembersLoading());
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
    emit(const AddProjectState.selectMembersLoading());
    memberIds.remove(memberId);
    memberNames.remove(memberName);
    emit(const AddProjectState.selectMembersSuccess());
  }

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitAddProjectState() async {
    if (formKey.currentState!.validate()) {
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
            message: failure.apiErrorModel.message,
          ),
        ),
      );
    }
  }
}
