import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';
import '../../core/theme/app_spacing.dart';
import '../../core/theme/app_typography.dart';
import '../models/product.dart';
import '../utils/currency_formatter.dart';
import 'discount_badge.dart';

/// Product card per docs/PROJECT-DESIGN-TOKENS.md component spec: white bg,
/// 8px radius, 1:1 media box, strikethrough original price + discount badge,
/// rating + sold count, optional AI-match badge (recommendations section).
class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product, this.onTap, this.onAddToCart, this.matchBadge});

  final Product product;
  final VoidCallback? onTap;
  final VoidCallback? onAddToCart;
  final Widget? matchBadge;

  @override
  Widget build(BuildContext context) {
    final price = double.tryParse(product.price) ?? 0;
    final originalPrice = product.originalPrice != null ? double.tryParse(product.originalPrice!) : null;

    return SizedBox(
      width: 160,
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  AspectRatio(
                    aspectRatio: 1.3,
                    child: ColoredBox(
                      color: AppColors.neutral50,
                      child: product.images.isEmpty
                          ? const Icon(Icons.image_not_supported_outlined, color: AppColors.neutral300)
                          : Image.network(
                              product.images.first,
                              fit: BoxFit.cover,
                              loadingBuilder: (context, child, progress) =>
                                  progress == null
                                      ? child
                                      : const Center(child: CircularProgressIndicator(strokeWidth: 2)),
                              errorBuilder: (context, error, stack) =>
                                  const Icon(Icons.image_not_supported_outlined, color: AppColors.neutral300),
                            ),
                    ),
                  ),
                  if (matchBadge != null) Positioned(top: AppSpacing.xs, left: AppSpacing.xs, child: matchBadge!),
                  if (originalPrice != null)
                    Positioned(
                      top: AppSpacing.xs,
                      right: AppSpacing.xs,
                      child: DiscountBadge(originalPrice: originalPrice, price: price),
                    ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(AppSpacing.sm),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(product.name, maxLines: 1, overflow: TextOverflow.ellipsis, style: AppTypography.bodyMedium),
                    const SizedBox(height: AppSpacing.xs),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(CurrencyFormatter.vnd(product.price), style: AppTypography.priceLg),
                        if (originalPrice != null) ...[
                          const SizedBox(width: AppSpacing.xs),
                          Flexible(
                            child: Text(
                              CurrencyFormatter.vnd(product.originalPrice!),
                              overflow: TextOverflow.ellipsis,
                              style: AppTypography.caption.copyWith(decoration: TextDecoration.lineThrough),
                            ),
                          ),
                        ],
                      ],
                    ),
                    const SizedBox(height: AppSpacing.xs),
                    Row(
                      children: [
                        const Icon(Icons.star, size: 14, color: AppColors.warning),
                        const SizedBox(width: 2),
                        Text(product.averageRating?.toStringAsFixed(1) ?? '—', style: AppTypography.caption),
                        const Spacer(),
                        if (product.soldCount != null)
                          Text('Đã bán ${product.soldCount}', style: AppTypography.caption),
                      ],
                    ),
                    if (onAddToCart != null) ...[
                      const SizedBox(height: AppSpacing.xs),
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton.icon(
                          onPressed: onAddToCart,
                          icon: const Icon(Icons.add_shopping_cart_outlined, size: 16),
                          label: const Text('Thêm'),
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            minimumSize: Size.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            side: const BorderSide(color: AppColors.primary),
                            foregroundColor: AppColors.primary,
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
