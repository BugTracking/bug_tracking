import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_response_body.g.dart';

@JsonSerializable()
class UserResponseBody {
  final bool status;
  final UserData? data;
  final String? message;

  UserResponseBody(this.status, this.data, this.message);

  factory UserResponseBody.fromJson(Map<String, dynamic> json) =>
      _$UserResponseBodyFromJson(json);
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
  final String role;
  final String phone;
  final String? avatar;
  UserModel(
    this.id,
    this.name,
    this.userName,
    this.email,
    this.role,
    this.phone,
    this.avatar,
  );

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
