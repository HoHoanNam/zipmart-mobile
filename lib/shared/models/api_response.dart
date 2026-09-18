import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';
part 'api_response.g.dart';

/// Sanity-check model to validate the freezed + json_serializable + build_runner
/// pipeline works end-to-end. Not tied to a real API yet.
@freezed
abstract class ApiResponse with _$ApiResponse {
  const factory ApiResponse({
    required bool success,
    String? message,
  }) = _ApiResponse;

  factory ApiResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseFromJson(json);
}
