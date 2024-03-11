import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_notification_request_body.g.dart';

@JsonSerializable()
class AddNotificationsRequestBody {
  final String title;
  final String content;
  final List<String> recievers;

  AddNotificationsRequestBody(this.title, this.content, this.recievers);

  Map<String, dynamic> toJson() => _$AddNotificationsRequestBodyToJson(this);
}
