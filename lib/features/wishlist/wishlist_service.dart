import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/network/api_endpoints.dart';
import '../../core/network/dio_client.dart';

class WishlistService {
  WishlistService(this._dioClient);

  final DioClient _dioClient;

  Future<void> addItem(String productId) {
    return _dioClient.dio.post(ApiEndpoints.wishlistItems, data: {'productId': productId});
  }
}

final wishlistServiceProvider = Provider<WishlistService>((ref) => WishlistService(ref.watch(dioClientProvider)));
