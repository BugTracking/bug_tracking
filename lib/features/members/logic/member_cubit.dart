import 'package:bug_tracking/core/helpers/cache_helper.dart';
import 'package:bug_tracking/features/home/data/models/user_response_body.dart';

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

  List<UserModel>? members;

  void emitMemberDataState() async {
    final response = await _addMemberRepo.getUser(CacheHelper.userId);
    response.when(
      success: (data) {
        members = data.data?.members;
        print("sucess");
        emit(MembersState.getMemberSuccess(members!));
      },
      failure: (error) {
        emit(MembersState.getMemberFailure(error));
      },
    );
  }
}
