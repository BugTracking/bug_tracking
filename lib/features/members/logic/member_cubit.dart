import 'package:bug_tracking/core/helpers/cache_helper.dart';
import 'package:bug_tracking/features/home/data/models/user_response_body.dart';
import 'package:bug_tracking/features/members/data/model/member_request_model.dart';
import 'package:bug_tracking/features/members/data/repos/add_member_repo.dart';
import 'package:bug_tracking/features/members/logic/member_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MembersCubit extends Cubit<MembersState> {
  final MembersRepo _addMemberRepo;
  MembersCubit(this._addMemberRepo) : super(const MembersState.initial());
  UserData? userData;
  final TextEditingController userNameAndEmailController =
      TextEditingController();

  final TextEditingController searchController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitMemberDataState() async {
    final response = await _addMemberRepo.getUser(CacheHelper.userId);
    response.when(
      success: (data) {
        userData = data.data!;
        emit(MembersState.getMemberSuccess(userData?.members ?? []));
      },
      failure: (error) {
        emit(MembersState.getMemberFailure(error));
      },
    );
  }

  AddMemberModel getAddMemberModel() {
    late AddMemberModel addMemberModel;

    final RegExp emailRegex = RegExp(
      r'^[a-zA-Z0-9._]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$',
      caseSensitive: false,
    );
    if (emailRegex.hasMatch(userNameAndEmailController.text)) {
      addMemberModel = AddMemberModel(
        userNameAndEmailController.text,
        null,
      );
    } else {
      addMemberModel = AddMemberModel(
        null,
        userNameAndEmailController.text,
      );
    }
    return addMemberModel;
  }

  void emitAddMemberState() async {
    if (formKey.currentState!.validate()) {
      emit(const MembersState.loading());
      final response = await _addMemberRepo.addMember(
        getAddMemberModel(),
      );
      response.when(
        success: (data) async {
          emitMemberDataState();
          emit(const MembersState.success());
        },
        failure: (error) {
          emit(const MembersState.error(message: 'error'));
        },
      );
    }
  }

  List<UserModel> filteredList = [];

  void searchFilterSearch(String query) {
    emit(const MembersState.initial());
    filteredList = userData?.members
            .where((element) =>
                element.name.toLowerCase().contains(query.toLowerCase()) ||
                element.email.toLowerCase().contains(query.toLowerCase()))
            .toList() ??
        [];
    emit(MembersState.getMemberSuccess(filteredList));
  }
}
