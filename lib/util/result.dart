import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result<T> with _$Result {
  factory Result.success(T data) = _Success;
  factory Result.error(String message) = _Error;
}
