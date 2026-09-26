import 'package:freezed_annotation/freezed_annotation.dart';
import 'product.dart';

part 'recommendation_item.freezed.dart';
part 'recommendation_item.g.dart';

@freezed
abstract class RecommendationItem with _$RecommendationItem {
  const factory RecommendationItem({
    required String productId,
    required double score,
    required String reason,
    required Product product,
  }) = _RecommendationItem;

  factory RecommendationItem.fromJson(Map<String, dynamic> json) => _$RecommendationItemFromJson(json);
}

/// `coldStart: true` means the user has no behavior history yet and `items`
/// is the top-selling fallback — same contract as web's rec-widget, which
/// swaps the section heading to "Sản phẩm bán chạy" in that case.
@freezed
abstract class RecommendationsResponse with _$RecommendationsResponse {
  const factory RecommendationsResponse({
    required List<RecommendationItem> items,
    required bool coldStart,
  }) = _RecommendationsResponse;

  factory RecommendationsResponse.fromJson(Map<String, dynamic> json) =>
      _$RecommendationsResponseFromJson(json);
}
