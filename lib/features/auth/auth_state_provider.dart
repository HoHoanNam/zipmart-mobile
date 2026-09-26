import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/network/dio_client.dart';

/// Minimal auth-gate state — true once an access token exists in secure
/// storage. There's no full login/refresh flow yet (features/auth is a
/// stub); this only gates what Home needs: the recommendations section, the
/// wishlist icon/count, and add-to-cart/wishlist actions.
final isAuthenticatedProvider = FutureProvider<bool>((ref) async {
  final storage = ref.watch(secureStorageProvider);
  final token = await storage.readAccessToken();
  return token != null;
});
