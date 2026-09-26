import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';

/// Small red count pill for AppBar/bottom-nav badges (cart, wishlist).
class CountBadge extends StatelessWidget {
  const CountBadge({super.key, required this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
      constraints: const BoxConstraints(minWidth: 16),
      decoration: BoxDecoration(color: AppColors.danger, borderRadius: BorderRadius.circular(999)),
      child: Text(
        count > 99 ? '99+' : '$count',
        textAlign: TextAlign.center,
        style: const TextStyle(color: AppColors.white, fontSize: 10, fontWeight: FontWeight.w700),
      ),
    );
  }
}
