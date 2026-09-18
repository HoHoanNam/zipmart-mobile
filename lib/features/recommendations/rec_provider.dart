import 'package:flutter_riverpod/flutter_riverpod.dart';

/// TODO: replace with a real GET /recommendations call via dioClientProvider
/// once zipmart-backend-nest exists. Empty list = cold-start fallback UI.
final recommendationsProvider = FutureProvider<List<String>>((ref) async {
  return <String>[];
});
