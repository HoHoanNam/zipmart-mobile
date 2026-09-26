import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/network/api_endpoints.dart';
import '../../core/network/dio_client.dart';
import '../../shared/models/recommendation_item.dart';
import '../auth/auth_state_provider.dart';

/// `GET /recommendations` requires a JWT — there is no anonymous/guest
/// recommendation endpoint on the backend. Callers must check
/// [isAuthenticatedProvider] themselves (RecWidget shows a login prompt
/// instead of watching this when logged out) rather than letting this throw
/// a 401 for every guest visitor.
final recommendationsProvider = FutureProvider<RecommendationsResponse>((ref) async {
  final dio = ref.watch(dioClientProvider).dio;
  final response = await dio.get(ApiEndpoints.recommendations, queryParameters: {'limit': 10});
  return RecommendationsResponse.fromJson(response.data as Map<String, dynamic>);
});
