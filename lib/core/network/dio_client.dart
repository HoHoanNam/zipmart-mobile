import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'api_endpoints.dart';
import '../storage/secure_storage.dart';

/// Single [Dio] instance for the whole app. No feature file should
/// instantiate `Dio()` directly — always go through [dioClientProvider].
class DioClient {
  DioClient(this._secureStorage) {
    _dio = Dio(BaseOptions(baseUrl: ApiEndpoints.baseUrl));
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final token = await _secureStorage.readAccessToken();
          if (token != null) {
            options.headers['Authorization'] = 'Bearer $token';
          }
          handler.next(options);
        },
        onError: (error, handler) async {
          // TODO: on 401, call ApiEndpoints.authRefresh and retry once,
          // deferred until zipmart-backend-nest exists.
          handler.next(error);
        },
      ),
    );
  }

  final SecureStorageService _secureStorage;
  late final Dio _dio;

  Dio get dio => _dio;
}

final secureStorageProvider = Provider<SecureStorageService>((ref) {
  return SecureStorageService();
});

final dioClientProvider = Provider<DioClient>((ref) {
  return DioClient(ref.watch(secureStorageProvider));
});
