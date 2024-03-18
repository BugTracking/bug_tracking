import 'package:json_annotation/json_annotation.dart';
part 'sent_notification_request_body.g.dart';

@JsonSerializable()
class SentNotificationRequestBody {
  final String to;
  final NotificationModel notification;
  final NotiticationData data;
  SentNotificationRequestBody(
    this.to,
    this.notification,
    this.data,
  );

  Map<String, dynamic> toJson() => _$SentNotificationRequestBodyToJson(this);
}

@JsonSerializable()
class NotificationModel {
  final String title;
  final String body;

  NotificationModel(
    this.title,
    this.body,
  );

  Map<String, dynamic> toJson() => _$NotificationModelToJson(this);

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}

@JsonSerializable()
class NotiticationData {
  final String senderId;
  final String? projectId;
  final String? projectTitle;
  final String? projectStatus;
  final String? bugTitle;
  final String? bugId;

  factory NotiticationData.fromJson(Map<String, dynamic> json) =>
      _$NotiticationDataFromJson(json);

  NotiticationData({
    required this.senderId,
    required this.projectId,
    required this.projectTitle,
    required this.projectStatus,
    required this.bugTitle,
    required this.bugId,
  });

  Map<String, dynamic> toJson() => _$NotiticationDataToJson(this);
}
