import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_edit_request_model.g.dart';

@JsonSerializable()
class UserEditRequestModel {
  final String? name;
  final String? userName;
  final String? email;

  UserEditRequestModel(
    this.name,
    this.userName,
    this.email,
  );
}
