import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/api_endpoints.dart';
import '../../../core/network/dio_client.dart';
import '../../../shared/models/product.dart';
import '../../../shared/models/product_page.dart';

final bestSellersProvider = FutureProvider<List<Product>>((ref) async {
  final dio = ref.watch(dioClientProvider).dio;
  final response = await dio.get(
    ApiEndpoints.products,
    queryParameters: {'sort': 'bestselling', 'page': 1, 'limit': 10},
  );
  final page = ProductPage.fromJson(response.data as Map<String, dynamic>);
  return page.items;
});
