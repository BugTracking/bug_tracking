import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel {
  final String? token;
  final bool status;
  final String? message;
  @JsonKey(name: 'data')
  final UserDataModel? userModel;

  LoginResponseModel(this.token, this.status, this.message, this.userModel);

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}

@JsonSerializable()
class UserDataModel {
  @JsonKey(name: '_id')
  final String id;
  final String name;
  final String email;
  final String role;
  final String userName;
  final String phone;

  UserDataModel(
      this.id, this.name, this.email, this.role, this.userName, this.phone);

  factory UserDataModel.fromJson(Map<String, dynamic> json) =>
      _$UserDataModelFromJson(json);
}
