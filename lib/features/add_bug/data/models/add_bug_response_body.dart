import 'package:bug_tracking/features/home/data/models/bugs_response_body.dart';
import 'package:json_annotation/json_annotation.dart';
part 'add_bug_response_body.g.dart';

@JsonSerializable()
class AddBugResponseBody {
  final bool status;
  final BugModel? data;
  final String? message;
  AddBugResponseBody(
    this.status,
    this.data,
    this.message,
  );
  factory AddBugResponseBody.fromJson(Map<String, dynamic> json) =>
      _$AddBugResponseBodyFromJson(json);
}
