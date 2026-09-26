import 'package:flutter/material.dart';

import '../../core/theme/app_spacing.dart';
import '../models/category.dart';

/// Horizontal filter chip row: "Tất cả" + one chip per category.
class CategoryChips extends StatelessWidget {
  const CategoryChips({super.key, required this.categories, this.onAllTap, this.onCategoryTap});

  final List<Category> categories;
  final VoidCallback? onAllTap;
  final void Function(Category category)? onCategoryTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
        itemCount: categories.length + 1,
        separatorBuilder: (context, index) => const SizedBox(width: AppSpacing.xs),
        itemBuilder: (context, index) {
          if (index == 0) {
            return ActionChip(label: const Text('Tất cả'), onPressed: onAllTap);
          }
          final category = categories[index - 1];
          return ActionChip(
            label: Text(category.name),
            onPressed: onCategoryTap == null ? null : () => onCategoryTap!(category),
          );
        },
      ),
    );
  }
}
