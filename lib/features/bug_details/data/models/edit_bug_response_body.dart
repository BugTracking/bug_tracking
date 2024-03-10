import 'package:freezed_annotation/freezed_annotation.dart';
part 'edit_bug_response_body.g.dart';

@JsonSerializable()
class EditBugResponseBody {
  final String? message;
  final bool status;

  EditBugResponseBody(this.message, this.status);

  factory EditBugResponseBody.fromJson(Map<String, dynamic> json) =>
      _$EditBugResponseBodyFromJson(json);
}
