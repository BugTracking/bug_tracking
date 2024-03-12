import 'package:freezed_annotation/freezed_annotation.dart';
part 'device_token_response_body.g.dart';

@JsonSerializable()
class DeviceTokenResponseBody {
  @JsonKey(name: 'data')
  final DeviceTokenModel? data;
  final bool status;
  final String? message;

  DeviceTokenResponseBody(this.data, this.status, this.message);

  factory DeviceTokenResponseBody.fromJson(Map<String, dynamic> json) =>
      _$DeviceTokenResponseBodyFromJson(json);
}

@JsonSerializable()
class DeviceTokenModel {
  @JsonKey(name: 'deviceToken')
  final String fcmToken;

  DeviceTokenModel({
    required this.fcmToken,
  });

  factory DeviceTokenModel.fromJson(Map<String, dynamic> json) =>
      _$DeviceTokenModelFromJson(json);
}
