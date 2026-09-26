import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/api_endpoints.dart';
import '../../../core/network/dio_client.dart';
import '../../../shared/models/count_response.dart';
import '../../auth/auth_state_provider.dart';

/// Cart badge count — guests always show 0 rather than hitting the
/// JWT-protected `/cart/count` endpoint.
final cartCountProvider = FutureProvider<int>((ref) async {
  final isAuthenticated = await ref.watch(isAuthenticatedProvider.future);
  if (!isAuthenticated) {
    return 0;
  }
  final dio = ref.watch(dioClientProvider).dio;
  final response = await dio.get(ApiEndpoints.cartCount);
  return CountResponse.fromJson(response.data as Map<String, dynamic>).count;
});
