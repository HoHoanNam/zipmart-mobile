// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promo_banner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PromoBanner _$PromoBannerFromJson(Map<String, dynamic> json) => _PromoBanner(
  id: json['id'] as String,
  imageUrl: json['imageUrl'] as String,
  headline: json['headline'] as String,
  subtext: json['subtext'] as String?,
  ctaLabel: json['ctaLabel'] as String?,
  ctaLink: json['ctaLink'] as String?,
  sortOrder: (json['sortOrder'] as num).toInt(),
  active: json['active'] as bool,
);

Map<String, dynamic> _$PromoBannerToJson(_PromoBanner instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'headline': instance.headline,
      'subtext': instance.subtext,
      'ctaLabel': instance.ctaLabel,
      'ctaLink': instance.ctaLink,
      'sortOrder': instance.sortOrder,
      'active': instance.active,
    };
