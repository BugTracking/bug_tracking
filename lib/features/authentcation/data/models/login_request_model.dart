import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_request_model.g.dart';

@JsonSerializable()
class LoginRequestModel {
  final String? email;
  final String? userName;
  final String password;

  LoginRequestModel(this.email, this.userName, this.password);

  Map<String, dynamic> toJson() => _$LoginRequestModelToJson(this);
}
