import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_request_model.g.dart';

@JsonSerializable()
class RegisterRequestModel {
  final String email;
  final String userName;
  final String name;
  final String password;
  final String phone;
  final String role;


  RegisterRequestModel( this.email,this.userName,this.name,
     this.password,  this.phone,  this.role);



  Map<String, dynamic> toJson() => _$RegisterRequestModelToJson(this);
}
