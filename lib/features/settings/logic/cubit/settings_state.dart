
import 'package:freezed_annotation/freezed_annotation.dart';
part 'settings_state.freezed.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.initial() = _Initial;

  const factory SettingsState.getLogOutLoading() = GetLogOutLoading;

  const factory SettingsState.getLogOutFailure(String message) = GetLogOutFailure;

  const factory SettingsState.getLogOutSuccess(String message) = GetLogOutSuccess;

  const factory SettingsState.getDeleteAccLoading() = GetDeleteAccLoading;

  const factory SettingsState.getDeleteAccFailure(String message) = GetDeleteAccFailure;

  const factory SettingsState.getDeleteAccSuccess(String message) = GetDeleteAccSuccess;


}
