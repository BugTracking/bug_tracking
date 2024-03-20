import 'package:bloc/bloc.dart';
import 'package:bug_tracking/core/data/app_data.dart';
import 'package:bug_tracking/features/edit_profile/data/models/user_edit_request_model.dart';
import 'package:bug_tracking/features/edit_profile/logic/cubit/edit_profile_state.dart';
import 'package:bug_tracking/features/edit_profile/data/repos/edit_profile_repo.dart';
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
  final formKey = GlobalKey<FormState>();

  void emitUserEditState() async {
    emit(const EditProfileState.getUserEditLoading());
    if (formKey.currentState!.validate()) {
      if (avatarAttach != null) {
        final imageResult =
            await _editProfileRepo.uploadAttachment(avatarAttach!);
        imageResult.when(success: (imageUrl) async {
          print('ImageURL : $imageUrl');
          UserEditRequestModel userEditRequestModel = UserEditRequestModel(
            name: nameController.text,
            userName: userNameController.text,
            email: emailController.text,
            avatar: imageUrl,
          );
          editAndGetUser(userEditRequestModel);
        }, failure: (error) {
          emit(EditProfileState.getUserEditFailure(error));
        });
      } else {
        UserEditRequestModel userEditRequestModel = UserEditRequestModel(
          name: nameController.text,
          userName: userNameController.text,
          email: emailController.text,
        );
        editAndGetUser(userEditRequestModel);
      }
    }
  }

  void editAndGetUser(UserEditRequestModel userEditRequestModel) async {
    final response = await _editProfileRepo.editUser(
      userData.user.id,
      userEditRequestModel,
    );
    response.when(success: (value) async {
      final userResult = await _editProfileRepo.getUser(userData.user.id);
      userResult.when(success: (value) {
        userData = value.data!;
        emit(const EditProfileState.getUserEditSuccess(
            'User Updated successfully'));
      }, failure: (error) {
        emit(EditProfileState.getUserEditFailure(error));
      });
    }, failure: (error) {
      emit(EditProfileState.getUserEditFailure(error));
    });
  }
}
