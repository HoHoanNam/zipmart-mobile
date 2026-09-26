import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/network/api_endpoints.dart';
import '../../core/network/dio_client.dart';

class CartService {
  CartService(this._dioClient);

  final DioClient _dioClient;

  Future<void> addItem(String productId, int quantity) {
    return _dioClient.dio.post(ApiEndpoints.cartItems, data: {'productId': productId, 'quantity': quantity});
  }
}

final cartServiceProvider = Provider<CartService>((ref) => CartService(ref.watch(dioClientProvider)));
