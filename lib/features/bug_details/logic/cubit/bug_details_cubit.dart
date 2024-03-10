import 'package:bloc/bloc.dart';
import 'package:bug_tracking/features/bug_details/data/models/add_comment_request_body.dart';
import 'package:bug_tracking/features/bug_details/data/models/bug_details_response_body.dart';
import 'package:bug_tracking/features/bug_details/data/models/comments_response_body.dart';
import 'package:bug_tracking/features/bug_details/data/repos/bug_details_repo.dart';
import 'package:bug_tracking/features/bug_details/logic/cubit/bug_details_state.dart';
import 'package:flutter/material.dart';

class BugDetailsCubit extends Cubit<BugDetailsState> {
  final BugDetailsRepo _bugDetailsRepo;
  BugDetailsCubit(this._bugDetailsRepo)
      : super(const BugDetailsState.initial());

  BugDetailsModel? bugDetailsModel;

  void emitBugDetailsState(String bugId) async {
    emit(const BugDetailsState.loading());
    final response = await _bugDetailsRepo.getBugDetails(bugId);
    response.when(
      success: (data) {
        bugDetailsModel = data.data;
        emit(BugDetailsState.success(data: data));
      },
      failure: (error) {
        emit(BugDetailsState.failure(error: error));
      },
    );
  }

  List<CommentData>? comments;

  void emitCommentsState(String bugId) async {
    final response = await _bugDetailsRepo.getComments(bugId);
    response.when(
      success: (data) {
        comments = data.data;
        emit(BugDetailsState.commentsSuccess(data: data));
      },
      failure: (error) {
        emit(BugDetailsState.commentsFailure(error: error));
      },
    );
  }

  final TextEditingController commentController = TextEditingController();
  final commentFormKey = GlobalKey<FormState>();

  void addComment(String bugId) async {
    FocusManager.instance.primaryFocus?.unfocus();
    if (commentFormKey.currentState!.validate()) {
      final response = await _bugDetailsRepo.addComment(
        AddCommentRequestBody(
          commentController.text,
          bugId,
        ),
      );
      response.when(
        success: (data) {
          commentController.clear();
          comments?.add(data.data!);
          print(comments?.length);
          emit(BugDetailsState.addCommentsSuccess(data: data));
        },
        failure: (error) {
          emit(BugDetailsState.addCommentsFailure(error: error));
        },
      );
    }
  }
}
