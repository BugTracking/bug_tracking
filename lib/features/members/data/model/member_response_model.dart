import 'package:freezed_annotation/freezed_annotation.dart';
part 'member_response_model.g.dart';

@JsonSerializable()
class AddMemberResponseBody {
  final bool status;
  final MembersModel? data;
  final String? message;

  AddMemberResponseBody(
      {required this.data, this.message, required this.status});

  factory AddMemberResponseBody.fromJson(Map<String, dynamic> json) =>
      _$AddMemberResponseBodyFromJson(json);
}

@JsonSerializable()
class MembersModel {
  @JsonKey(name: '_id')
  final String id;
  final String name;
  final String userName;
  final String email;
  final String role;
  final String phone;

  MembersModel(
    this.id,
    this.name,
    this.userName,
    this.email,
    this.role,
    this.phone,
  );

  factory MembersModel.fromJson(Map<String, dynamic> json) =>
      _$MembersModelFromJson(json);
}
