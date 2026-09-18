import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'rec_provider.dart';

class RecWidget extends ConsumerWidget {
  const RecWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recommendations = ref.watch(recommendationsProvider);

    return recommendations.when(
      data: (items) => items.isEmpty
          ? const Text('Sản phẩm bán chạy') // cold-start fallback
          : Text('${items.length} gợi ý'),
      loading: () => const CircularProgressIndicator(),
      error: (err, stack) => const SizedBox.shrink(),
    );
  }
}
