import 'package:freezed_annotation/freezed_annotation.dart';

part 'projects_states.freezed.dart';

@freezed
class ProjectStates with _$ProjectStates {
  const factory ProjectStates.initial() = _Initial;

  const factory ProjectStates.selectProjectName() = SelectProjectName;

  const factory ProjectStates.selectProjectStatus() = SelectProjectStatus;

  const factory ProjectStates.filterProjects() = FilterProjects;
}
