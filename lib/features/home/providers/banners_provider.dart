import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/api_endpoints.dart';
import '../../../core/network/dio_client.dart';
import '../../../shared/models/promo_banner.dart';

/// Shown only if the admin hasn't configured any active banners yet, so the
/// home screen never looks broken — mirrors web home.ts's `FALLBACK_SLIDE`.
final fallbackBanner = PromoBanner(
  id: 'fallback',
  imageUrl: 'https://images.unsplash.com/photo-1607082349566-187342175e2f?auto=format&fit=crop&w=1200&q=80',
  headline: 'Mua sắm thông minh hơn với Zipmart',
  subtext: 'Gợi ý sản phẩm được cá nhân hoá dựa trên hành vi mua sắm của bạn.',
  ctaLabel: 'Khám phá sản phẩm',
  ctaLink: '/products',
  sortOrder: 0,
  active: true,
);

final bannersProvider = FutureProvider<List<PromoBanner>>((ref) async {
  final dio = ref.watch(dioClientProvider).dio;
  final response = await dio.get(ApiEndpoints.banners);
  final items = (response.data as List<dynamic>)
      .map((e) => PromoBanner.fromJson(e as Map<String, dynamic>))
      .toList();
  return items.isEmpty ? [fallbackBanner] : items;
});
