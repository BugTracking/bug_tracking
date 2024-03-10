import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_bug_state.freezed.dart';

@freezed
class AddBugState with _$AddBugState {
  const factory AddBugState.initial() = _Initial;

  const factory AddBugState.categoriesLoading() = CategoriesLoading;

  const factory AddBugState.categoriesSuccess() = CategoriesSuccess;

  const factory AddBugState.categoriesFailure() = CategoriesFailure;
}
