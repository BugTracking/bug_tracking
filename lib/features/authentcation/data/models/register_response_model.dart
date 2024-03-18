import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_response_model.g.dart';

@JsonSerializable()
class RegisterResponseModel {
  final String? token;
  final bool status;
  final String? message;
  @JsonKey(name: 'data')
  final UserDataModel? userModel;

  RegisterResponseModel(this.token, this.status, this.message, this.userModel);

  factory RegisterResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseModelFromJson(json);
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
