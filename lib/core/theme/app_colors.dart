import 'package:flutter/material.dart';

/// "Intelligent Retail Minimalism" palette — ported from
/// docs/PROJECT-DESIGN-TOKENS.md (same tokens implemented as Tailwind
/// `@theme` values in zipmart-frontend-web/src/styles.css).
class AppColors {
  AppColors._();

  static const primary = Color(0xFF5B5EA6);
  static const primaryLight = Color(0xFF8A8DC4);
  static const primaryDark = Color(0xFF3D3F7A);

  static const neutral50 = Color(0xFFF8F8FC);
  static const neutral100 = Color(0xFFEDEDF5);
  static const neutral300 = Color(0xFFC5C5D8);
  static const neutral600 = Color(0xFF6B6B8A);
  static const neutral900 = Color(0xFF1A1A2E);

  static const success = Color(0xFF4CAF82);
  static const warning = Color(0xFFE8A838);
  static const danger = Color(0xFFE05757);

  static const white = Color(0xFFFFFFFF);
}
