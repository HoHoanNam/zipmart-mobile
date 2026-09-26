import 'package:freezed_annotation/freezed_annotation.dart';

part 'promo_banner.freezed.dart';
part 'promo_banner.g.dart';

/// Named `PromoBanner` (not `Banner`) to avoid colliding with Flutter's own
/// `material.Banner` widget.
@freezed
abstract class PromoBanner with _$PromoBanner {
  const factory PromoBanner({
    required String id,
    required String imageUrl,
    required String headline,
    String? subtext,
    String? ctaLabel,
    String? ctaLink,
    required int sortOrder,
    required bool active,
  }) = _PromoBanner;

  factory PromoBanner.fromJson(Map<String, dynamic> json) => _$PromoBannerFromJson(json);
}
