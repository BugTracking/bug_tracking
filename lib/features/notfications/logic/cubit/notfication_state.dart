
import 'package:bug_tracking/features/notfications/data/models/notfication_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'notfication_state.freezed.dart';

@freezed
class NotficationState with _$NotficationState {
  const factory NotficationState.initial() = _Initial;


  const factory NotficationState.getBugsLoading() = GetNotficationLoading;

  const factory NotficationState.getBugsFailure(String message) = GetNotficationFailure;

  const factory NotficationState.getBugsSuccess(List<NotificationData> notfication) = GetNotficationSuccess;

}
