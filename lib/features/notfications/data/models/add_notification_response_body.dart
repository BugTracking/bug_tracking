import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_notification_response_body.g.dart';

@JsonSerializable()
class AddNotificationsResponseBody {
  final String? message;
  final bool status;

  AddNotificationsResponseBody(this.message, this.status);

  factory AddNotificationsResponseBody.fromJson(Map<String, dynamic> json) =>
      _$AddNotificationsResponseBodyFromJson(json);
}
