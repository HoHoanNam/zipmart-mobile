import 'package:freezed_annotation/freezed_annotation.dart';

part 'count_response.freezed.dart';
part 'count_response.g.dart';

/// Shared response shape for `GET /cart/count` and `GET /wishlist/count`.
@freezed
abstract class CountResponse with _$CountResponse {
  const factory CountResponse({required int count}) = _CountResponse;

  factory CountResponse.fromJson(Map<String, dynamic> json) => _$CountResponseFromJson(json);
}
