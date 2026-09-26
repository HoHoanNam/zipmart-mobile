// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommendation_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RecommendationItem _$RecommendationItemFromJson(Map<String, dynamic> json) =>
    _RecommendationItem(
      productId: json['productId'] as String,
      score: (json['score'] as num).toDouble(),
      reason: json['reason'] as String,
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RecommendationItemToJson(_RecommendationItem instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'score': instance.score,
      'reason': instance.reason,
      'product': instance.product,
    };

_RecommendationsResponse _$RecommendationsResponseFromJson(
  Map<String, dynamic> json,
) => _RecommendationsResponse(
  items: (json['items'] as List<dynamic>)
      .map((e) => RecommendationItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  coldStart: json['coldStart'] as bool,
);

Map<String, dynamic> _$RecommendationsResponseToJson(
  _RecommendationsResponse instance,
) => <String, dynamic>{
  'items': instance.items,
  'coldStart': instance.coldStart,
};
