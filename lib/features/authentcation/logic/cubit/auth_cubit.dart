import 'package:bug_tracking/features/authentcation/data/models/login_request_model.dart';
import 'package:bug_tracking/features/authentcation/data/repos/auth_repo.dart';
import 'package:bug_tracking/features/authentcation/logic/cubit/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepo _authRepo;
  AuthCubit(this._authRepo) : super(AuthInitial());

  final TextEditingController userNameAndEmailController =
      TextEditingController();

  final TextEditingController passwordController = TextEditingController();

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
    emit(AuthLoading());

    if (formKey.currentState!.validate()) {
      final response = await _authRepo.login(
        getLoginRequestModel(),
      );
      response.when(
        success: (data) {
          emit(AuthSuccess('You are logged in sucessfully'));
        },
        failure: (error) {
          emit(AuthFailure(error.apiErrorModel.message));
        },
      );
    }
  }
}
