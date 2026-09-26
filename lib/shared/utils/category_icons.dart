import 'package:flutter/material.dart';

/// Fallback icon per category slug when `Category.imageUrl` is null —
/// mirrors the intent of web's `CATEGORY_IMAGE_MAP`, using Material icons
/// instead of bundled images (no asset pipeline set up on mobile yet).
class CategoryIcons {
  CategoryIcons._();

  static const _bySlug = <String, IconData>{
    'electronics': Icons.devices_other_outlined,
    'apparel': Icons.checkroom_outlined,
    'household': Icons.chair_outlined,
    'food': Icons.restaurant_outlined,
  };

  static IconData forSlug(String slug) => _bySlug[slug] ?? Icons.category_outlined;
}
