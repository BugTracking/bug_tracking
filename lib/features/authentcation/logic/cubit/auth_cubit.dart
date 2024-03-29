import 'package:bug_tracking/features/authentcation/data/models/login_request_model.dart';
import 'package:bug_tracking/features/authentcation/data/models/register_request_model.dart';
import 'package:bug_tracking/features/authentcation/data/repos/auth_repo.dart';
import 'package:bug_tracking/features/authentcation/logic/cubit/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bug_tracking/core/helpers/cache_helper.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepo _authRepo;
  AuthCubit(this._authRepo) : super(AuthInitial());

  final TextEditingController userNameAndEmailController =
      TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController roleController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  LoginRequestModel getLoginRequestModel() {
    late LoginRequestModel loginRequestModel;

    final RegExp emailRegex = RegExp(
      r'^[a-zA-Z0-9._]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$',
      caseSensitive: false,
    );
    if (emailRegex.hasMatch(userNameAndEmailController.text)) {
      loginRequestModel = LoginRequestModel(
        userNameAndEmailController.text,
        null,
        passwordController.text,
      );
    } else {
      loginRequestModel = LoginRequestModel(
        null,
        userNameAndEmailController.text,
        passwordController.text,
      );
    }
    return loginRequestModel;
  }

  void emitLoginState() async {
    if (formKey.currentState!.validate()) {
      emit(AuthLoading());
      final response = await _authRepo.login(
        getLoginRequestModel(),
      );
      response.when(
        success: (data) async {
          await CacheHelper.setString(key: 'token', value: data.token!);
          await CacheHelper.setString(key: 'userId', value: data.userModel!.id);
          emit(AuthSuccess('You are logged in sucessfully'));
        },
        failure: (error) {
          emit(AuthFailure(error));
        },
      );
    }
  }

  RegisterRequestModel getRegisterRequestModel() {
    late RegisterRequestModel registerRequestModel;

    registerRequestModel = RegisterRequestModel(
      emailController.text,
      userNameController.text,
      nameController.text,
      passwordController.text,
      phoneController.text,
      roleController.text,
    );

    return registerRequestModel;
  }

  void emitRegisterState() async {
    if (formKey.currentState!.validate()) {
      emit(AuthLoading());

      final response = await _authRepo.register(
        getRegisterRequestModel(),
      );
      response.when(
        success: (data) async {
          await CacheHelper.setString(key: 'token', value: data.token!);
          await CacheHelper.setString(key: 'userId', value: data.userModel!.id);
          emit(AuthSuccess('You registered sucessfully'));
        },
        failure: (error) {
          emit(AuthFailure(error));
        },
      );
    }
  }
}
