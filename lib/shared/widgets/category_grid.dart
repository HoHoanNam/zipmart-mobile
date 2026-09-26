import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';
import '../../core/theme/app_spacing.dart';
import '../../core/theme/app_typography.dart';
import '../models/category.dart';
import '../utils/category_icons.dart';

/// 4-column category grid — uses `category.imageUrl` when the admin has set
/// one, otherwise a Material icon keyed off `slug` (mirrors the intent of
/// web's CATEGORY_IMAGE_MAP, no bundled image assets on mobile yet).
class CategoryGrid extends StatelessWidget {
  const CategoryGrid({super.key, required this.categories, this.onCategoryTap});

  final List<Category> categories;
  final void Function(Category category)? onCategoryTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: categories.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: AppSpacing.sm,
          crossAxisSpacing: AppSpacing.sm,
          childAspectRatio: 0.85,
        ),
        itemBuilder: (context, index) {
          final category = categories[index];
          return InkWell(
            borderRadius: BorderRadius.circular(AppSpacing.radiusCard),
            onTap: onCategoryTap == null ? null : () => onCategoryTap!(category),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 56,
                  height: 56,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(color: AppColors.neutral100, shape: BoxShape.circle),
                  child: category.imageUrl != null
                      ? Image.network(
                          category.imageUrl!,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stack) =>
                              Icon(CategoryIcons.forSlug(category.slug), color: AppColors.primary),
                        )
                      : Icon(CategoryIcons.forSlug(category.slug), color: AppColors.primary),
                ),
                const SizedBox(height: AppSpacing.xs),
                Text(
                  category.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: AppTypography.caption,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
