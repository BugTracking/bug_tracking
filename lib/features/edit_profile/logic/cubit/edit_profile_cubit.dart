import 'package:bloc/bloc.dart';
import 'package:bug_tracking/core/data/app_data.dart';
import 'package:bug_tracking/core/helpers/cache_helper.dart';
import 'package:bug_tracking/features/edit_profile/data/models/user_edit_request_model.dart';
import 'package:bug_tracking/features/edit_profile/logic/cubit/edit_profile_state.dart';
import 'package:bug_tracking/features/edit_profile/data/repos/edit_profile_repo.dart';
import 'package:flutter/material.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  final EditProfileRepo _editProfileRepo;

  EditProfileCubit(this._editProfileRepo) : super(const EditProfileState.initial());

  final TextEditingController nameController = TextEditingController(text:userData.user.name );
  final TextEditingController userNameController = TextEditingController(text:userData.user.userName);
  final TextEditingController emailController = TextEditingController(text:userData.user.email);
  final TextEditingController passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  UserEditRequestModel getUserEditRequestModel() {
    late UserEditRequestModel userEditRequestModel;
      userEditRequestModel = UserEditRequestModel(
        nameController.text,
        userNameController.text,
        emailController.text,
      );
    return userEditRequestModel;
  }


  void emitUserEditState() async {
    final response = await _editProfileRepo.editUser(CacheHelper.userId,getUserEditRequestModel());
    response.when(
      success: (data) {
        emit(EditProfileState.getUserEditSuccess(data.message!));
      },
      failure: (error) {
        emit(EditProfileState.getUserEditFailure(error));
      },
    );
  }
}
