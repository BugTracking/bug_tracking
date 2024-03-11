import 'package:freezed_annotation/freezed_annotation.dart';
part 'delete_acc_response_model.g.dart';

@JsonSerializable()
class DeleteAccResponseModel {
  final bool status;
  final String? message;

  DeleteAccResponseModel(this.status, this.message);

  factory DeleteAccResponseModel.fromJson(Map<String, dynamic> json) =>
      _$DeleteAccResponseModelFromJson(json);
}

