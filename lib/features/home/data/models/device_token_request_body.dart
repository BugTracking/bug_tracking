import 'package:freezed_annotation/freezed_annotation.dart';
part 'device_token_request_body.g.dart';

@JsonSerializable()
class DeviceTokenRequestBody {
  @JsonKey(name: 'deviceToken')
  final String fcmToken;

  DeviceTokenRequestBody({
    required this.fcmToken,
  });

  Map<String, dynamic> toJson() => _$DeviceTokenRequestBodyToJson(this);
}
