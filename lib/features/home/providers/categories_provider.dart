import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/api_endpoints.dart';
import '../../../core/network/dio_client.dart';
import '../../../shared/models/category.dart';

final categoriesProvider = FutureProvider<List<Category>>((ref) async {
  final dio = ref.watch(dioClientProvider).dio;
  final response = await dio.get(ApiEndpoints.categories);
  return (response.data as List<dynamic>)
      .map((e) => Category.fromJson(e as Map<String, dynamic>))
      .toList();
});
