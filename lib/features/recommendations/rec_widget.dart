import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/theme/app_spacing.dart';
import '../../shared/models/product.dart';
import '../../shared/widgets/ai_match_badge.dart';
import '../../shared/widgets/product_card.dart';
import '../../shared/widgets/section_header.dart';
import 'rec_provider.dart';

/// Renders the "Gợi ý dành riêng cho bạn" section for logged-in users.
/// Callers must not build this for guests — `recommendationsProvider` hits a
/// JWT-only endpoint and would 401.
class RecWidget extends ConsumerWidget {
  const RecWidget({super.key, this.onProductTap, this.onAddToCart});

  final void Function(Product product)? onProductTap;
  final void Function(Product product)? onAddToCart;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recommendations = ref.watch(recommendationsProvider);

    return recommendations.when(
      data: (data) {
        if (data.items.isEmpty) {
          return const SizedBox.shrink();
        }
        // Cold-start users (no behavior history yet) get a top-selling
        // fallback list — same contract as web's rec-widget.
        final title = data.coldStart ? 'Sản phẩm bán chạy' : 'Gợi ý dành riêng cho bạn';
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionHeader(title: title),
            const SizedBox(height: AppSpacing.sm),
            SizedBox(
              height: 280,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
                itemCount: data.items.length,
                separatorBuilder: (context, index) => const SizedBox(width: AppSpacing.sm),
                itemBuilder: (context, index) {
                  final item = data.items[index];
                  return ProductCard(
                    product: item.product,
                    matchBadge: data.coldStart ? null : AiMatchBadge(score: item.score),
                    onTap: onProductTap == null ? null : () => onProductTap!(item.product),
                    onAddToCart: onAddToCart == null ? null : () => onAddToCart!(item.product),
                  );
                },
              ),
            ),
          ],
        );
      },
      loading: () => const SizedBox(height: 280, child: Center(child: CircularProgressIndicator())),
      error: (err, stack) => const SizedBox.shrink(),
    );
  }
}
