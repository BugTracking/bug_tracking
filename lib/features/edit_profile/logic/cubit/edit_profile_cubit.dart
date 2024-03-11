import 'package:bloc/bloc.dart';
import 'package:bug_tracking/core/data/app_data.dart';
import 'package:bug_tracking/core/helpers/cache_helper.dart';
import 'package:bug_tracking/features/edit_profile/logic/cubit/edit_profile_state.dart';
import 'package:bug_tracking/features/edit_profile/data/repos/edit_profile_repo.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:bug_tracking/core/helpers/permissions.dart';
import 'package:image_picker/image_picker.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  final EditProfileRepo _editProfileRepo;

  EditProfileCubit(this._editProfileRepo)
      : super(const EditProfileState.initial());

  File? avatarAttach;
  void emitUploadAttachmentsState() async {
    emit(const EditProfileState.initial());
    if (await requestStoragePermission()) {
      ImagePicker imagePicker = ImagePicker();
      XFile? file = await imagePicker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 100,
      );
      if (file != null) {
        File attachment = File(file.path);
        avatarAttach = attachment;
      }
    }
    emit(const EditProfileState.uploadAttachments());
  }

  final TextEditingController nameController =
      TextEditingController(text: userData.user.name);
  final TextEditingController userNameController =
      TextEditingController(text: userData.user.userName);
  final TextEditingController emailController =
      TextEditingController(text: userData.user.email);
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitUserEditState() async {
    if (formKey.currentState!.validate() || avatarAttach != null) {
      emit(const EditProfileState.getUserEditLoading());
      FormData formData = FormData.fromMap({
        "name": nameController.text,
        "userName": userNameController.text,
        "email": emailController.text,
      });
      final response = await _editProfileRepo.editUser(
        CacheHelper.userId,
        formData,
      );
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
}
