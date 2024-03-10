import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_response_model.g.dart';

@JsonSerializable()
class UserResponseModel {
  final bool status;
  final UserData? data;
  final String? message;

  UserResponseModel(this.status, this.data, this.message);

  factory UserResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UserResponseModelFromJson(json);
}

@JsonSerializable()
class UserData {
  @JsonKey(name: 'user')
  final UserModel user;
  @JsonKey(name: 'membersList')
  final List<UserModel> members;

  UserData(this.user, this.members);

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}

@JsonSerializable()
class UserModel {
  @JsonKey(name: '_id')
  final String id;
  final String name;
  final String userName;
  final String email;

  UserModel(
      this.id,
      this.name,
      this.userName,
      this.email,

      );

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
