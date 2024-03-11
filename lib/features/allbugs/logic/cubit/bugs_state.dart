import 'package:freezed_annotation/freezed_annotation.dart';
part 'bugs_state.freezed.dart';

@freezed
class BugsState with _$BugsState {
  const factory BugsState.initial() = _Initial;

  const factory BugsState.selectItem() = SelectItem;

  const factory BugsState.filterBugs() = FilterBugs;
}
