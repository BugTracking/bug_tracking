import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_project_state.freezed.dart';

@freezed
class AddProjectState with _$AddProjectState {
  const factory AddProjectState.initial() = _Initial;

  const factory AddProjectState.loading() = Loading;

  const factory AddProjectState.success() = Success;

  const factory AddProjectState.error({required String message}) = Error;

  const factory AddProjectState.selectMembersSuccess() = SelectMembersSuccess;

  const factory AddProjectState.getCategoriesLoading() = GetCateogriesLoading;

  const factory AddProjectState.getCategoriesSuccess() = GetCateogriesSucess;

  const factory AddProjectState.filterCategoriesSuccess() =
      FilterCateogriesSucess;

  const factory AddProjectState.selectCategoriesSuccess() =
      SelectCateogriesSucess;

  const factory AddProjectState.getCategoriesError() = GetCateogriesError;

  const factory AddProjectState.addCategoriesLoading() = AddCateogriesLoading;

  const factory AddProjectState.addCategoriesSuccess() = AddCateogriesSuccess;

  const factory AddProjectState.addCategoriesError(String error) =
      AddCateogriesError;
}
