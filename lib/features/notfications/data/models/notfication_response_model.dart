import 'package:freezed_annotation/freezed_annotation.dart';
part 'notfication_response_model.g.dart';

@JsonSerializable()
class NotificationResponseModel {
  final bool status;
  final String? messege;
  final List<NotificationData> data;

  NotificationResponseModel(this.status,this.messege, this.data);

  factory NotificationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationResponseModelFromJson(json);
}

@JsonSerializable()
class NotificationData {
  @JsonKey(name: '_id')
  final String id;
  final NotificationSender senderUserId;
  final String receiverUserId;
  final NotificationBody notificationId;
  final String time;

  NotificationData(this.id, this.senderUserId, this.receiverUserId, this.notificationId, this.time);

  factory NotificationData.fromJson(Map<String, dynamic> json) =>
      _$NotificationDataFromJson(json);
}

@JsonSerializable()
class NotificationSender {
  @JsonKey(name: '_id')
  final String id;
  final String email;
  final String userName;
  final String name;
  final String password;
  final String role;
  final String phone;

  NotificationSender(this.id, this.email, this.userName, this.name, this.password, this.role, this.phone);

  factory NotificationSender.fromJson(Map<String, dynamic> json) =>
      _$NotificationSenderFromJson(json);
}

@JsonSerializable()
class NotificationBody {
  @JsonKey(name: '_id')
  final String id;
  final String title;
  final String content;

  NotificationBody(this.id, this.title, this.content);

  factory NotificationBody.fromJson(Map<String, dynamic> json) =>
      _$NotificationBodyFromJson(json);
}
