import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_edit_request_model.g.dart';

@JsonSerializable()
class UserEditRequestModel {
  final String? name;
  final String? userName;
  final String? email;
  final String? avatar;


  UserEditRequestModel( this.name,  this.userName,  this.email,this.avatar);
 // final String password;

  Map<String, dynamic> toJson() => _$UserEditRequestModelToJson(this);
}
