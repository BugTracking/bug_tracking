import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_bug_state.freezed.dart';

@freezed
class AddBugState with _$AddBugState {
  const factory AddBugState.initial() = _Initial;

  const factory AddBugState.categoriesLoading() = CategoriesLoading;

  const factory AddBugState.categoriesSuccess() = CategoriesSuccess;

  const factory AddBugState.categoriesFailure() = CategoriesFailure;

  const factory AddBugState.uploadAttachments() = UploadAttachments;

  const factory AddBugState.selectMembersSuccess() = SelectMembersSuccess;

  const factory AddBugState.selectItem() = SelectItem;

  const factory AddBugState.addBugLoading() = AddBugLoading;

  const factory AddBugState.addBugSuccess(String message) = AddBugSuccess;

  const factory AddBugState.addBugFailure(String error) = AddBugFailure;
}
