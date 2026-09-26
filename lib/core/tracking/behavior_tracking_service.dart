import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../network/api_endpoints.dart';
import '../network/dio_client.dart';

/// Fire-and-forget behavior tracking, mirrors web's BehaviorTrackingService
/// (`POST /behaviors`) — errors are swallowed, tracking must never block or
/// break the UI action it's attached to.
class BehaviorTrackingService {
  BehaviorTrackingService(this._dioClient);

  final DioClient _dioClient;

  void track(String productId, String eventType) {
    unawaited(_post(productId, eventType));
  }

  Future<void> _post(String productId, String eventType) async {
    try {
      await _dioClient.dio.post(ApiEndpoints.behaviors, data: {'productId': productId, 'eventType': eventType});
    } catch (_) {
      // Fire-and-forget: tracking must never block or break the UI action it's attached to.
    }
  }
}

final behaviorTrackingServiceProvider = Provider<BehaviorTrackingService>((ref) {
  return BehaviorTrackingService(ref.watch(dioClientProvider));
});
