// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Product _$ProductFromJson(Map<String, dynamic> json) => _Product(
  id: json['id'] as String,
  name: json['name'] as String,
  categoryId: json['categoryId'] as String,
  brand: json['brand'] as String,
  description: json['description'] as String?,
  images:
      (json['images'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  price: json['price'] as String,
  originalPrice: json['originalPrice'] as String?,
  stock: (json['stock'] as num).toInt(),
  averageRating: (json['averageRating'] as num?)?.toDouble(),
  reviewCount: (json['reviewCount'] as num?)?.toInt(),
  soldCount: (json['soldCount'] as num?)?.toInt(),
);

Map<String, dynamic> _$ProductToJson(_Product instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'categoryId': instance.categoryId,
  'brand': instance.brand,
  'description': instance.description,
  'images': instance.images,
  'price': instance.price,
  'originalPrice': instance.originalPrice,
  'stock': instance.stock,
  'averageRating': instance.averageRating,
  'reviewCount': instance.reviewCount,
  'soldCount': instance.soldCount,
};
