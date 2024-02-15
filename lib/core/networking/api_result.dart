import 'package:bug_tracking/core/networking/api_error_handler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_result.freezed.dart';

@freezed
abstract class ApiResult<T> with _$ApiResult<T> {
  factory ApiResult.success(T data) = _Success<T>;
  factory ApiResult.failure(ErrorHandler error) = _Failure<T>;
}
