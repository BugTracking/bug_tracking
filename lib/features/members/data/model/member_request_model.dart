import 'package:freezed_annotation/freezed_annotation.dart';
part 'member_request_model.g.dart';

@JsonSerializable()
class AddMemberModel {
  final String? email;
  final String? userName;


  AddMemberModel(this.email, this.userName);



  Map<String, dynamic> toJson() => _$AddMemberModelToJson(this);
}
