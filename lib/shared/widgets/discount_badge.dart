import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';
import '../../core/theme/app_spacing.dart';
import '../../core/theme/app_typography.dart';

/// "-N%" badge shown on a product card when `originalPrice > price`.
class DiscountBadge extends StatelessWidget {
  const DiscountBadge({super.key, required this.originalPrice, required this.price});

  final double originalPrice;
  final double price;

  @override
  Widget build(BuildContext context) {
    if (originalPrice <= price) {
      return const SizedBox.shrink();
    }
    final percentOff = (((originalPrice - price) / originalPrice) * 100).round();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.sm, vertical: 2),
      decoration: BoxDecoration(
        color: AppColors.danger,
        borderRadius: BorderRadius.circular(AppSpacing.radiusBadge),
      ),
      child: Text(
        '-$percentOff%',
        style: AppTypography.captionBold.copyWith(color: AppColors.white),
      ),
    );
  }
}
